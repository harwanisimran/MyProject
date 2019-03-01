//
//  FirstViewController.swift
//  iOSTest
//
//  Created by iOS on 21/02/19.
//  Copyright © 2019 simran. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var myView: UIView!
    
    var lbl1 : UILabel!
    var lbl2 : UILabel!
    var txt1 : UITextView!
    var txt2 : UITextView!
    var txt3 : UITextView!
    var txt4 : UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl1 = UILabel()
        lbl2  = UILabel()
        txt1 = UITextView()
        txt2 = UITextView()
        txt3 = UITextView()
        txt4 = UITextView()
        
        lbl1.text = "This is title"
        lbl1.numberOfLines = 0
        lbl1.translatesAutoresizingMaskIntoConstraints = false
        myView.addSubview(lbl1)
        
        lbl2.text = "This is short description"
        lbl2.numberOfLines = 0
        lbl2.translatesAutoresizingMaskIntoConstraints = false
        myView.addSubview(lbl2)
        
        txt1.text = "this is long long long long long long long long long long long long long description 1"
        txt1.backgroundColor = UIColor.red
        txt1.font = UIFont.systemFont(ofSize: 17)
        txt1.isEditable = false
        txt1.layer.cornerRadius = 10
        txt1.translatesAutoresizingMaskIntoConstraints = false
        myView.addSubview(txt1)
        
        txt2.text = "this is long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long description also, with url http://cmile.in"
        txt2.backgroundColor = UIColor.blue
        txt2.isEditable = false
        txt2.font = UIFont.systemFont(ofSize: 17)
        txt2.layer.cornerRadius = 10
        txt2.translatesAutoresizingMaskIntoConstraints = false
        txt2.delegate = self
        txt2.dataDetectorTypes = UIDataDetectorTypes.link
        myView.addSubview(txt2)
        
        txt3.text = "this is long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long description 3"
        txt3.backgroundColor = UIColor.green
        txt3.isEditable = false
        txt3.font = UIFont.systemFont(ofSize: 17)
        txt3.layer.cornerRadius = 10
        txt3.translatesAutoresizingMaskIntoConstraints = false
        myView.addSubview(txt3)
        
        txt4.text = "this is long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long description 3"
        txt4.backgroundColor = UIColor.yellow
        txt4.isEditable = false
        txt4.font = UIFont.systemFont(ofSize: 17)
        txt4.layer.cornerRadius = 10
        txt4.translatesAutoresizingMaskIntoConstraints = false
        myView.addSubview(txt4)
        
        
        let l1Top = NSLayoutConstraint(item: lbl1, attribute: .top, relatedBy: .equal, toItem: myView, attribute: .top, multiplier: 1.0, constant: 20)
        
        let l1CenterX = NSLayoutConstraint(item: lbl1, attribute: .centerX, relatedBy: .equal, toItem: myView, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        myView.addConstraint(l1Top)
        
        myView.addConstraint(l1CenterX)
        
        
        let l2Left = NSLayoutConstraint(item: lbl2, attribute: NSLayoutAttribute.left, relatedBy: .equal, toItem: myView, attribute: .left, multiplier: 1.0, constant: 10)
        
        let l2Right = NSLayoutConstraint(item: lbl2, attribute: .right, relatedBy: .equal, toItem: myView, attribute: .right, multiplier: 1.0, constant: -10)
        
        let l2Top = NSLayoutConstraint(item: lbl2, attribute: .top, relatedBy: .equal, toItem: lbl1, attribute: .bottom, multiplier: 1.0, constant: 20)
        
        myView.addConstraint(l2Left)
        myView.addConstraint(l2Right)
        myView.addConstraint(l2Top)
        
        let t1Left = NSLayoutConstraint(item: txt1, attribute: NSLayoutAttribute.left, relatedBy: .equal, toItem: myView, attribute: .left, multiplier: 1.0, constant: 10)
        
        let t1Right = NSLayoutConstraint(item: txt1, attribute: .right, relatedBy: .equal, toItem: myView, attribute: .right, multiplier: 1.0, constant: -10)
        
        let t1Top = NSLayoutConstraint(item: txt1, attribute: .top, relatedBy: .equal, toItem: lbl2, attribute: .bottom, multiplier: 1.0, constant: 20)
        
        myView.addConstraint(t1Left)
        myView.addConstraint(t1Right)
        myView.addConstraint(t1Top)
        
        self.view.addConstraint(NSLayoutConstraint(item: txt1, attribute: .width, relatedBy: .equal,toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 400.0))
        
        self.view.addConstraint(NSLayoutConstraint(item: txt1, attribute: .height, relatedBy: .equal,toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60.0))
        
        let t2Left = NSLayoutConstraint(item: txt2, attribute: NSLayoutAttribute.left, relatedBy: .equal, toItem: myView, attribute: .left, multiplier: 1.0, constant: 10)
        
        let t2Right = NSLayoutConstraint(item: txt2, attribute: .right, relatedBy: .equal, toItem: myView, attribute: .right, multiplier: 1.0, constant: -10)
        
        let t2Top = NSLayoutConstraint(item: txt2, attribute: .top, relatedBy: .equal, toItem: txt1, attribute: .bottom, multiplier: 1.0, constant: 20)
        
        myView.addConstraint(t2Left)
        myView.addConstraint(t2Right)
        myView.addConstraint(t2Top)
        
        self.view.addConstraint(NSLayoutConstraint(item: txt2, attribute: .width, relatedBy: .equal,toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 400.0))
        
        self.view.addConstraint(NSLayoutConstraint(item: txt2, attribute: .height, relatedBy: .equal,toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 280.0))
        
        let t3Left = NSLayoutConstraint(item: txt3, attribute: NSLayoutAttribute.left, relatedBy: .equal, toItem: myView, attribute: .left, multiplier: 1.0, constant: 10)
        
        let t3Right = NSLayoutConstraint(item: txt3, attribute: .right, relatedBy: .equal, toItem: myView, attribute: .right, multiplier: 1.0, constant: -10)
        
        let t3Top = NSLayoutConstraint(item: txt3, attribute: .top, relatedBy: .equal, toItem: txt2, attribute: .bottom, multiplier: 1.0, constant: 20)
        
        myView.addConstraint(t3Left)
        myView.addConstraint(t3Right)
        myView.addConstraint(t3Top)
        
        self.view.addConstraint(NSLayoutConstraint(item: txt3, attribute: .width, relatedBy: .equal,toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 400.0))
        
        self.view.addConstraint(NSLayoutConstraint(item: txt3, attribute: .height, relatedBy: .equal,toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 280.0))
        let t4Left = NSLayoutConstraint(item: txt4, attribute: NSLayoutAttribute.left, relatedBy: .equal, toItem: myView, attribute: .left, multiplier: 1.0, constant: 10)
        
        let t4Right = NSLayoutConstraint(item: txt4, attribute: .right, relatedBy: .equal, toItem: myView, attribute: .right, multiplier: 1.0, constant: -10)
        
        let t4Top = NSLayoutConstraint(item: txt4, attribute: .top, relatedBy: .equal, toItem: txt3, attribute: .bottom, multiplier: 1.0, constant: 20)
        
        myView.addConstraint(t4Left)
        myView.addConstraint(t4Right)
        myView.addConstraint(t4Top)
        
        self.view.addConstraint(NSLayoutConstraint(item: txt4, attribute: .width, relatedBy: .equal,toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 400.0))
        
        self.view.addConstraint(NSLayoutConstraint(item: txt4, attribute: .height, relatedBy: .equal,toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 280.0))
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool {
        // print("User clicked on \(URL.absoluteURL)")
        
        let actionSheet = UIAlertController(title: "Where do you want to open it", message: "", preferredStyle: .actionSheet)
        
        
        actionSheet.addAction(UIAlertAction(title: "Safari", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            UIApplication.shared.open(Foundation.URL(string: "http://www.cmile.in")!, options: [:], completionHandler: nil)
        }))
        
        
        actionSheet.addAction(UIAlertAction(title: "Chrome", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            UIApplication.shared.open(Foundation.URL(string: "http://www.cmile.in")!, options: [:], completionHandler: nil)
        }))
        
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(actionSheet, animated: true, completion: nil)
        
        return false
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
