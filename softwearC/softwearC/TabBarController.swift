//
//  TabBarController.swift
//  softwearC
//
//  Created by 末光　航大 on 2019/11/28.
//  Copyright © 2019 Kodai Suemitsu. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToPrev(_ unwindSegue: UIStoryboardSegue) {
        _ = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
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
