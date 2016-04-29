//
//  Profile.swift
//  Adventure
//
//  Created by Yonas Kbrom on 4/27/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import Foundation

var profiles = [Profile]()

class Profile {
    
    var firstName : String!

    var lastName : String!

    var email : String!
    
    var password: String!
    
    var current: Bool

    init (first: String, last: String, email: String, password: String, current: Bool) {
        self.firstName = first
        self.lastName = last
        self.email = email
        self.password = password
        self.current = current
    }
}
