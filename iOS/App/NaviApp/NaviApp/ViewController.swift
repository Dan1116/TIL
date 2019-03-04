import UIKit

// URLSession

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func open() {
        let naviController = UINavigationController(rootViewController: FirstController())
        present(naviController, animated: true)
    
    }
    
    var task: URLSessionDataTask?
    
    @IBAction func open2() {
        // IU 이미지를 다운로드 받아서 이미지뷰에 셋팅하기
        let downloadUrl: URL! = URL(string: "http://image.chosun.com/sitedata/image/201901/07/2019010702664_0.jpg")
        let session = URLSession.shared
        
        // 1. Swift의 람다 구문안에서는 self에 대해서 명시적으로 캡쳐를 해야 한다.
        task = session.dataTask(with: downloadUrl) { (data, response, error) in
            if let data = data {
                // 3. UI에 대한 변경은 반드시 main 스레드에서 수행되어야 한다.
                DispatchQueue.main.async { [weak self] in
                    self?.imageView.image = UIImage(data: data)
                }
            }
        }
        
        // 2. Task를 반드시 명시적으로 구동해야 한다.
        task?.resume()
    }
    
    @IBAction func open3() {
        // Main.Storyboard 에서 MyController 찾아 생성합니다.
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyController")
        
        present(controller, animated: true)
    }
}

