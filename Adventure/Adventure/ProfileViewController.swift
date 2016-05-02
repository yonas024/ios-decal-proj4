//
//  ProfileViewController.swift
//  Adventure
//
//  Created by Yonas Kbrom on 4/27/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var last: UILabel!
    @IBOutlet weak var email: UILabel!
    
    var profile = Profile(first: "", last: "", email: "", password: "", current: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //dictionary.setValue("dog", forKey: "cat")
        for i in profiles {
            if i.current == true {
                profile = i
            }
        }
        
        first.text = profile.firstName
        last.text = profile.lastName
        email.text = profile.email

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
