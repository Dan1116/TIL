import UIKit

class MyCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    // 코드를 통해 생성할 경우 사용하는 생성자
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        print("MyCell 생성1")
    }

    // 인터페이스가 빌더가 사용하는 생성자 - XIB, Storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("MyCell 생성2")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
