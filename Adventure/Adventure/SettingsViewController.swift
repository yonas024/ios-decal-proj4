//
//  SettingsViewController.swift
//  Adventure
//
//  Created by Yonas Kbrom on 5/1/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    @IBAction func out(sender: AnyObject) {
//        for i in profiles {
//            if i.current == true {
//                i.current = false
//            }
//        }
//        self.performSegueWithIdentifier("unwindToInitial", sender: self)
//    }
    @IBAction func out(sender: AnyObject) {
        self.performSegueWithIdentifier("unwindNow", sender: self)
    }
    
}
