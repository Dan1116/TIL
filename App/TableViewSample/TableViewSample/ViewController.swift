
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func didTapXIBButton() {
        let controller = XIBTableController()
        present(controller, animated: true)
    }
    
    @IBAction func didTapSBButton() {
    }
    


}

