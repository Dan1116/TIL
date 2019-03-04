import UIKit

// Kotlin
//  - Model(VO)
//   : data class
//      1) toString, equals, hashCode, copy
//      2) Immutable

// Swift(C#)
//  - Reference Type
//   : 컴파일러가 참조 계수를 증감하는 코드를 삽입한다.(ARC)
//   => class
//  - Value Type
//   => struct

// let a = Person()
// let b = a
struct Person{
    let name: String
    let age: Int
    
    // 멤버 와이즈 초기화
    //  : struct의 각 프로퍼티의 이름으로 초기화 메소드(생성자)를
    //    자동으로 생성해줍니다.
    #if false
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    #endif
}

class XIBTableController: UITableViewController {
    let people = [
        Person(name: "Tom", age: 41),
        Person(name: "Bob", age: 42),
        Person(name: "Ann", age: 43),
        Person(name: "Yumi", age: 44),
        Person(name: "IU", age: 45),
        Person(name: "Dongwon", age: 46),
        Person(name: "Taerin", age: 47),
        Person(name: "Chansik", age: 48)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // XIB 파일을 tableView의 Prototype으로 등록합니다.
        tableView.register(UINib(nibName: "MyCell", bundle: nil),
                           forCellReuseIdentifier: "MyCell")
        
        let control = UIRefreshControl()
        control.addTarget(self, action: #selector(foo), for: .valueChanged)
        self.refreshControl = control
        
        // let person = Person(name: "Tom", age: 42)
    }
    
    @objc func foo() {
        print("foo")
        tableView.refreshControl?.endRefreshing()
    }
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyCell
        
        let model = people[indexPath.row]
        cell.nameLabel.text = model.name
        cell.ageLabel.text = "\(model.age)세"
        
        return cell
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell: MyCell! = tableView.dequeueReusableCell(withIdentifier: "MyCell") as? MyCell
        if cell == nil {
            cell = Bundle.main.loadNibNamed("MyCell", owner: nil, options: nil)?[0] as? MyCell
            print("MyCell 생성")
        } else {
            print("MyCell 재사용")
        }
        
        let model = people[indexPath.row]
        cell.nameLabel.text = model.name
        cell.ageLabel.text = "\(model.age)세"
    
        return cell
    }
    */
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}


















