//
//  SecondViewController.swift
//  iOSTest
//
//  Created by iOS on 21/02/19.
//  Copyright © 2019 simran. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var lbl1 : UILabel!
    var lbl2 : UILabel!
    var imageData : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.backgroundColor = UIColor.white
        lbl1 = UILabel()
        lbl2  = UILabel()
        
        lbl1.text = "Title 2"
        lbl1.numberOfLines = 0
        lbl1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(lbl1)
        
        lbl2.text = "Below there is image"
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
        
        imageData = UIImageView()
        imageData.translatesAutoresizingMaskIntoConstraints = false
        
        let data = try! Data.init(contentsOf: URL(string: "https://cdn.lifehack.org/wp-content/uploads/2016/12/08230522/best-motivational-quotes-dont-limit-challenges.png")!)
        imageData.image = UIImage(data: data)
        self.view.addSubview(imageData)
        
        let l3Top = NSLayoutConstraint(item: imageData, attribute: .top, relatedBy: .equal, toItem: lbl2, attribute: .bottom, multiplier: 1.0, constant: 20)
        self.view.addConstraint(l3Top)
        
        let iCenterX = NSLayoutConstraint(item: imageData, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0)
        self.view.addConstraint(iCenterX)
       
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
