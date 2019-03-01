import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var pickerView: UIPickerView! {
        didSet {
            // pickerView에 대한 초기화 코드를 작성하면 됩니다.
            pickerView.dataSource = self
            pickerView.delegate = self
        }
    }
    
    // KVO - Key-Value Observing
    //  : 프로퍼티의 값이 변경되었음을 통보받는 기술
    @IBOutlet weak var nameLabel: UILabel!
    
    let animals = [ "사자", "호랑이", "말", "토끼", "뱀" ]
    let fruits = [ "사과", "배", "바나나" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        // pickerView.dataSource = self
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 2
        }
        
        let n = pickerView.selectedRow(inComponent: 0)
        if n == 0 {
            return animals.count
        } else {
            return fruits.count
        }
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        // return animals[row]
        if component == 0 {
            let arr = [ "동물", "과일" ]
            return arr[row]
        }

        let n = pickerView.selectedRow(inComponent: 0)
        if n == 0 {
            return animals[row]
        } else {
            return fruits[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            pickerView.reloadComponent(1)
            return
        }
        
        let n = pickerView.selectedRow(inComponent: 0)
        nameLabel.text = (n == 0) ? animals[row] : fruits[row]
    }
}

#if false
// UIPickerView
//  : 데이터를 꺼내갈 수 있는 '프로토콜'이 제공됩니다.
//  => UIPickerViewDataSource

//  : PickerView의 상태에 관련된 '프로토콜'이 제공됩니다.
//  => UIPickerViewDelegate

// component => Column의 개수
// row       => 각 Column별 줄 개수
// => POP(Protocol Oriented Programming)

// pickerView
// class ViewController: UIViewController, UIPickerViewDataSource {
class ViewController: UIViewController {
    @IBOutlet weak var pickerView: UIPickerView! {
        didSet {
            // pickerView에 대한 초기화 코드를 작성하면 됩니다.
            pickerView.dataSource = self
            pickerView.delegate = self
        }
    }

    // KVO - Key-Value Observing
    //  : 프로퍼티의 값이 변경되었음을 통보받는 기술
    @IBOutlet weak var nameLabel: UILabel!
    
    let animals = [ "사자", "호랑이", "말", "토끼", "뱀" ]
    let fruits = [ "사과", "배", "바나나" ]
    
    /*
        동물
        과일
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        // pickerView.dataSource = self
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animals.count
//        if component == 0 {
//            return 2
//        } else {
//            return 5
//        }
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return animals[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        nameLabel.text = animals[row]
    }
}
#endif
