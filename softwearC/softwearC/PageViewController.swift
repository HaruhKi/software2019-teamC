//
//  PageViewController.swift
//  softwearC
//
//  Created by 山城怜以 on 2019/12/18.
//  Copyright © 2019 Kodai Suemitsu. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        self.dataSource = self as? UIPageViewControllerDataSource
    }

    func getFirst() -> ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "FirstViewController") as! ViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getSecond() -> ViewController2 {
        return storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! ViewController2
    }
}

extension PageViewController : UIPageViewControllerDataSource {

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: <#T##AnyClass#>)(ViewController) {
            // 1 -> 2
            return getSecond()
        } else if viewController.isKindOfClass(ViewController2) {
            // 2 -> 3
            return getThird()
        } else {
            // 3 -> end of the road
            return nil
        }

    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
}



