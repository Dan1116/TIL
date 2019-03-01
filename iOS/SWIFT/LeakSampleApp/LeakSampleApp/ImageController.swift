import RxAlamofire
import RxCocoa
import RxSwift
import UIKit

// Android - vital(Gradle 최신 버전)

// Reactive Extension
//  => 비동기의 처리를 효과적으로 할 수 있는 방법

// 동기 프로그래밍 - Collection
//     Iterable / Iterator (pull)
//      => map, filter, sort ...

// 비동기 프로그래밍 - Rx
//     Observable / Observer (push)
//      => map, filter, flatMap ...

class ImageController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var label: UILabel!

    let disposeBag = DisposeBag() // ref: 1
    let session = URLSession.shared
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("ImageController")
    }

    deinit {
        print("~ImageController")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // unowned: 댕글링 포인터 문제가 발생할 수 있다.
        // => 이미 파괴된 객체에 대한 참조가 발생할 수 있다.
        // weak: autoniling를 지원하는 weak을 사용하는 것이 좋다.
        searchBar.rx.text
            .throttle(0.5, scheduler: MainScheduler.instance)
            .observeOn(MainScheduler.instance)
            // .subscribe(onNext: { [unowned self] text in
            .subscribe(onNext: { [weak self] text in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5.0, execute: {
                    guard let self = self else {
                        print("self is nil")
                        return
                    }

                    self.label.text = text
                })
            }).disposed(by: disposeBag)
    }

    func foo() {
        print("foo")
    }

    @IBAction func loadImage(_: UIButton) {
        guard let url = URL(string: "https://i.pinimg.com/736x/c9/4c/ce/c94cce569ee056a1f1525a072788708d.jpg") else {
            return
        }

        // Observable<Data>
        // Rx를 사용하고 있다면, runOnUiThread / DispatchQueue.main.async 같은
        // 구문은 사용할 필요가 없습니다.
        //  => Rx가 지원하는 연산을 통해 해결하는 것이 좋습니다.
        session.rx.data(.get, url)
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { data in
                self.imageView.image = UIImage(data: data)
                self.foo()
                // runOnUiThread
                // DispatchQueue.main.async {
                //    self.imageView.image = UIImage(data: data)
                // }
            }).disposed(by: disposeBag)
    }

    @IBAction func finish(_: UIButton) {
        dismiss(animated: true)
    }
}
