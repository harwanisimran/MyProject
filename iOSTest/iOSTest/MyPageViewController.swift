//
//  MyPageViewController.swift
//  iOSTest
//
//  Created by iOS on 21/02/19.
//  Copyright © 2019 simran. All rights reserved.
//

import UIKit

class MyPageViewController: UIPageViewController,UIPageViewControllerDataSource {

    lazy var orderViewController : [UIViewController] = {
        
        var sb = UIStoryboard(name: "Main", bundle: nil)
        
        var firstView = sb.instantiateViewController(withIdentifier: "fvc")
        var secondView = sb.instantiateViewController(withIdentifier: "svc")
        var thirdView = sb.instantiateViewController(withIdentifier: "tvc")
       
        return [firstView,secondView,thirdView]
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        if let firstViewController = orderViewController.first {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
       
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderViewController.index(of: viewController) else{
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else{
           return orderViewController.last
        }
        guard orderViewController.count > previousIndex else {
            return nil
        }
        
        return orderViewController[previousIndex]
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewContrllerIndex = orderViewController.index(of: viewController) else {
            return nil
        }
        let nextIndex = viewContrllerIndex + 1
        let orderViewControllerCount = orderViewController.count
        
        guard orderViewControllerCount != nextIndex else {
            return orderViewController.first
        }
        
        guard orderViewControllerCount > nextIndex else {
            return nil
        }
        return orderViewController[nextIndex]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
