import UIKit

// UIPickerView
//  => component, row


// UITableView
//   UITableViewDataSource
//   UITableViewDelegate

//  => IndexPath
//      section,  row



class XIBController: UIViewController {
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        }
    }
    
    let people = [
        "IU", "이지은", "카이", "제니", "도경수", "바다", "빅뱅"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

// Android - View Holder Pattern
//  => 화면에 보이는 개수 만큼의 뷰만 생성해야 한다.

extension XIBController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    } 
    
    // XIB에서 사용하는 방법.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = "MyCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        cell.textLabel?.text = "Hello"
        cell.detailTextLabel?.text = "world"
        return cell
    }
    
    

    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let reuseIdentifier = "MyCell"
//        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
//        if cell == nil {
//            cell = UITableViewCell(style: .subtitle, reuseIdentifier: reuseIdentifier)
//            print("Cell 생성")
//        } else {
//            print("Cell 재사용")
//        }
//
//        cell.textLabel?.text = "Hello"
//        cell.detailTextLabel?.text = "world"
//        return cell
//    }
    
    
    
    #if false
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = "Hello"
        cell.detailTextLabel?.text = "world"
        return cell
    }
    #endif
}
