import UIKit
import Alamofire
import Kingfisher

// 1. import 구문을 통해 외부 모듈을 사용할 수 있다.
class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func download(_ sender: UIButton) {
        guard let url = URL(string: "https://i.pinimg.com/originals/b1/63/79/b16379c0b918781645fa951dd1e909b0.jpg") else {
            return
        }
        
        imageView.kf.setImage(with: url)
    }

    #if false
    // 2. Alamofire를 이용하는 방법
    @IBAction func download(_ sender: UIButton) {
        guard let url = URL(string: "https://i.pinimg.com/originals/b1/63/79/b16379c0b918781645fa951dd1e909b0.jpg") else {
            return
        }
        
        // Optional: Monad
        //  Int?
        //   => value
        //   => nil
        
        //  Int? : Optional<Int>
        //  Optional -> enum
        #if false
        var n: Int? = nil
        switch n {
        case .none:
            print("nil")
        case .some(let value):
            print("\(value)")
        }
        #endif
        
        #if false
        AF.request(url)
            .validate(statusCode: 200..<500)
            .responseData { (response) in
                switch (response.result) {
                case .success(let data): do {
                    self.imageView.image = UIImage(data: data)
                    }
                case .failure(let error): do {
                    print(error.localizedDescription)
                    }
                }
        }
        #endif
        
    }
    #endif
    
    // 1. URLSession을 이용하는 방법
    #if false
    @IBAction func download(_ sender: UIButton) {
        #if false
        let n = 42
        guard n > 10 && n < 30 else {
            return
        }
        #endif
    
        guard let url = URL(string: "https://i.pinimg.com/originals/b1/63/79/b16379c0b918781645fa951dd1e909b0.jpg") else {
            return
        }
        
        let session = URLSession.shared
        // 1. Closure를 만들때, 항상 마지막 인자로 error 객체가 전달된다.
        let downloadTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            guard error == nil else {
                print(error?.localizedDescription ?? "")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                return
            }
            
            print("statusCode: \(response.statusCode)")
            // 200..<300
            // if (200..<300).contains(response.statusCode) {
            guard 200..<300 ~= response.statusCode else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            // Android: Main Thread를 통해서 처리하는 방법
            // 1. Activity
            //     Handler => runOnUiThread()
            // 2. RxAndroid
            //     Main Thread Scheduler
            
            // iOS
            // 1. GCD Library(Grand Central Dispatch)
            //     DispatchQueue.main.async {}
            // 2. RxCocoa
            //     Main Thread Scheduler
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data)
            }
        }
        
        downloadTask.resume()
    
        
    }
    #endif
    
}










