import UIKit

class MenuController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // XIBController
    @IBAction func showXIBController(_ sender: UIButton) {
        let controller = XIBController()
        present(controller, animated: true)
    }
    
    // SBController
    @IBAction func showStoryboardController(_ sender: UIButton) {
        performSegue(withIdentifier: "StoryboardSegue", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
