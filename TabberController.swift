//
//  TabberController.swift
//  softwearC
//
//  Created by 末光　航大 on 2019/11/26.
//  Copyright © 2019 Kodai Suemitsu. All rights reserved.
//

import UIKit
protocol MyTabBarDelegate {
    func didSelectTab(tabBarController: UITabBarController)
}
class TabberController: UITabBarController , UITabBarControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self as UITabBarControllerDelegate
        // Do any additional setup after loading the view.
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if viewController is MyTabBarDelegate {
            let vc = viewController as! MyTabBarDelegate
            vc.didSelectTab(tabBarController: self)
        }
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
