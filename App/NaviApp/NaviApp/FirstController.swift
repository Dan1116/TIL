import UIKit

class FirstController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func next(_ sender: Any) {
        // 현재의 ViewController가 NavigationController에 포함되어 있다면
        // self.navigationController 가 널이 아닙니다.
        navigationController?.pushViewController(SecondController(), animated: true)
    }
    
}
