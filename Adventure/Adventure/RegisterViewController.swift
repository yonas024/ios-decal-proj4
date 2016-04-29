//
//  RegisterViewController.swift
//  Adventure
//
//  Created by Yonas Kbrom on 4/27/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password1: UITextField!
    @IBOutlet weak var password2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //dictionary.setValue("dog", forKey: "cat")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        if firstName.text == "" || lastName.text == "" || email.text == "" || password1.text == "" || password2.text == ""{
            
            let alertController = UIAlertController(title: "Error", message:
                "Make sure you fill in all the blanks!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: clearField))
            self.presentViewController(alertController, animated: true, completion: nil)
                return false
        } else {
            if password1.text != password2.text {
                let alertController = UIAlertController(title: "Error", message:
                    "Your passwords do not match, try again.", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: clearField))
                self.presentViewController(alertController, animated: true, completion: nil)
                return false
            }
            var p = Profile(first: firstName.text!, last: lastName.text!, email: email.text!, password: password1.text!, current: true)
            profiles.append(p)
            return true
        }
    }
    
    
    @IBAction func clearField(sender: AnyObject) {
        firstName.text = ""
        lastName.text = ""
        email.text = ""
        password1.text = ""
        password2.text = ""
    }
    
}
