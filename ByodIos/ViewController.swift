//
//  ViewController.swift
//  ByodIos
//
//  Created by IG on 2015. 10. 29..
//  Copyright © 2015년 IG.byod.ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var passLabel: UITextField!
    
    @IBAction func loginBtn(sender: AnyObject) {
        
       
        if idLabel.text == "admin" && passLabel.text == "1"{
            let adTab = self.storyboard?.instantiateViewControllerWithIdentifier("adminTabBar") as! UITabBarController
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.window?.rootViewController = adTab
        }else{
            let memTab = self.storyboard?.instantiateViewControllerWithIdentifier("userTabBar") as! UITabBarController
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.window?.rootViewController = memTab
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

