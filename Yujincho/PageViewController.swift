//
//  PageViewController.swift
//  Yujincho
//
//  Created by shin on 2018/10/06.
//  Copyright © 2018年 nishun0419. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        // Do any additional setup after loading the view.
        self.dataSource = self
    }
    
    func getFirst() -> ViewController{
        return storyboard!.instantiateViewController(withIdentifier: "top") as! ViewController
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
    extension PageViewController : UIPageViewControllerDataSource {
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController:UIViewController) -> UIViewController? {
            return storyboard!.instantiateViewController(withIdentifier: "top") as! ViewController
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            return CreateViewController()
        }
    }

