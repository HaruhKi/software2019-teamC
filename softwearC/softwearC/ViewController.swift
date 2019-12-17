//
//  ViewController.swift
//  softwearC
//
//  Created by 山城怜以 on 2019/12/17.
//  Copyright © 2019 Kodai Suemitsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = "ラベルのテキスト"
        label.sizeToFit()
        label.center = self.view.center
        self.view.addSubview(label)

        // Do any additional setup after loading the view.
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
