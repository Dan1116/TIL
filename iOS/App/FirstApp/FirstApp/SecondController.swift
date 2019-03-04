//
//  SecondController.swift
//  FirstApp
//
//  Created by Taerin Yoon on 2019. 1. 2..
//  Copyright © 2019년 Taerin Yoon. All rights reserved.
//

import UIKit

class SecondController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    @IBAction func close(_ sender: UIButton) {
        // dismiss(animated: true, completion: nil)
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = name
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
