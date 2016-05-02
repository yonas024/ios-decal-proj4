//
//  ViewController.swift
//  Adventure
//
//  Created by Yonas Kbrom on 4/24/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

 var dictionary: Dictionary<String, String>? = ["shawn@berkeley.edu":"imata"]

class LoginViewController: UIViewController {
    
   
    
    //var logins = Logins()
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var logo: UIImageView!
    
    let images = [
        UIImage(named: "city8.gif")!,
        UIImage(named: "city2.gif")!,
        UIImage(named: "city3.gif")!,
        UIImage(named: "city4.gif")!,
        UIImage(named: "city5.gif")!,
        UIImage(named: "city6.gif")!,
        UIImage(named: "city7.gif")!]
    
    var index = 0
    let animationDuration: NSTimeInterval = 0.25
    let switchingInterval: NSTimeInterval = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dictionary!["a"] = "j"
        logo.image = UIImage(named: "logo.png")
        
        let pulseAnimation = CABasicAnimation(keyPath: "opacity")
        pulseAnimation.duration = 1
        pulseAnimation.fromValue = 0
        pulseAnimation.toValue = 1
        pulseAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        pulseAnimation.autoreverses = true
        pulseAnimation.repeatCount = FLT_MAX
        
        logo.layer.addAnimation(pulseAnimation, forKey: nil)
        
        
        backgroundImage.image = images[index]
        animateImage()
    }
    
    func animateImage() {
        CATransaction.begin()
        CATransaction.setAnimationDuration(animationDuration)
        CATransaction.setCompletionBlock {
            let delay = dispatch_time(DISPATCH_TIME_NOW, Int64(self.switchingInterval * NSTimeInterval(NSEC_PER_SEC)))
            dispatch_after(delay, dispatch_get_main_queue()) {
                self.animateImage()
            }
        }
        
        let transition = CATransition()
        transition.type = kCATransitionFade
        backgroundImage.layer.addAnimation(transition, forKey: kCATransition)
        backgroundImage.image = images[index]
        
        CATransaction.commit()
        if index < images.count - 1 {
            index = index + 1
        } else {
            index = 0
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        if identifier == "loggedIn" {
            var e = email?.text
            var p = password?.text
            if dictionary![e!] != nil {
                if dictionary![e!] != p {
                    return false
                }
                for i in profiles {
                    if i.email ==  e {
                        i.current = true
                    } else {
                        i.current = false
                    }
                }
            } else {
                let alertController = UIAlertController(title: "Error", message:
                    "Incorrect email and password combination, try again.", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: clearField))
                self.presentViewController(alertController, animated: true, completion: nil)
                return false
            }
        }
        return true
    }
    
    func clearField(sender: AnyObject) {
        email.text = ""
        password.text = ""
    }
    
    @IBAction func unwindBack(segue: UIStoryboardSegue) {
        
    }


}

