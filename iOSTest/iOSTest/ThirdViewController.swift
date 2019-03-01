//
//  ThirdViewController.swift
//  iOSTest
//
//  Created by iOS on 21/02/19.
//  Copyright © 2019 simran. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var myWebView : UIWebView!
    var lbl1 : UILabel!
    var lbl2 : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        lbl1 = UILabel()
        lbl2  = UILabel()
        
        lbl1.text = "Last One"
        lbl1.numberOfLines = 0
        lbl1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lbl1)
        
        lbl2.text = "How's the josh?"
        lbl2.numberOfLines = 0
        
        lbl2.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lbl2)
        
        let cTop = NSLayoutConstraint(item: lbl1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 20)
        
        let cCenterX = NSLayoutConstraint(item: lbl1, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        self.view.addConstraint(cTop)
        
        self.view.addConstraint(cCenterX)
        
        let cLeft = NSLayoutConstraint(item: lbl2, attribute: NSLayoutAttribute.left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 10)
        
        let cRight = NSLayoutConstraint(item: lbl2, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: -10)
        
        let l2Top = NSLayoutConstraint(item: lbl2, attribute: .top, relatedBy: .equal, toItem: lbl1, attribute: .bottom, multiplier: 1.0, constant: 20)
        
        self.view.addConstraint(cLeft)
        self.view.addConstraint(cRight)
        self.view.addConstraint(l2Top)
        
        myWebView = UIWebView(frame: CGRect(x: 60, y: 100, width: 300, height: 300))
        //myWebView = UIWebView()
        myWebView.translatesAutoresizingMaskIntoConstraints = false
        
        loadVideo(id: "mj2asf2to7k")

        self.view.addSubview(myWebView)
    }
    
    func loadVideo(id : String) {
        let url = URL(string: "https://www.youtube.com/embed/\(id)")
        myWebView.loadRequest(URLRequest(url: url!))
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
