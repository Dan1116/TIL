import UIKit

class FirstController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("FirstController - viewDidLoad")
    }
    
    @objc func foo() {
        print("foo")
    }
    
    @objc func goo(sender: UISwitch) {
        print("goo: \(sender.isOn ? "ON" : "OFF")")
        
    }
    
    // 아래의 함수는 Storyboard - Segue가 발생할 때마다 호출되는 함수입니다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
        let secondController = segue.destination as? SecondController
        if (secondController != nil) {
            secondController?.name = "Tom"
        }
        */
        
        if let secondController = segue.destination as? SecondController {
            secondController.name = "Tom"
        }
    }
    
    
    
    // 2. UIView를 Interface Builder를 통해서 생성하는 방법.
    /*
    override func loadView() {
        // FirstView.xib(xml)
        //  => Android Inflate: xml을 Java의 객체로 변경하는 과정
        
        // FirstView.xib -> FirstView.nib
        //  => Bundle
        let view = Bundle.main.loadNibNamed("FirstView", owner: nil, options: nil)?[0] as? UIView
        self.view = view
    }
    */
    
    // 1. UIView를 코드를 통해서 생성하는 방법.
    /*
    override func loadView() {
        print("FirstController - loadView")
        let myView = UIView(frame: UIScreen.main.bounds)
        myView.backgroundColor = UIColor.white
        
        let button = UIButton(type: .infoDark)
        button.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        myView.addSubview(button)
        
        button.addTarget(self, action: #selector(foo), for: .touchUpInside)
        
        let sampleSwitch = UISwitch(frame: CGRect(x: 100, y: 30, width: 100, height: 50))
        sampleSwitch.addTarget(self, action: #selector(goo), for: .valueChanged)
        myView.addSubview(sampleSwitch)
        
        self.view = myView
    }
 */
}
