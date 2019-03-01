//
//  ThirdController.swift
//  NaviApp
//
//  Created by Chansik Yun on 09/01/2019.
//  Copyright © 2019 Chansik Yun. All rights reserved.
//

import UIKit

class ThirdController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func done(_ sender: Any) {
        // 바로 이전 컨트롤러로 이동하는 방법
        // navigationController?.popViewController(animated: true)
        // navigationController?.popToRootViewController(animated: true)
        dismiss(animated: true)
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
