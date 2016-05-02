//
//  Event.swift
//  Adventure
//
//  Created by Yonas Kbrom on 5/1/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreLocation

var events = [Event]()

class Event {
    
    var name : String!
    
    var subtitle: String!
    
    var note : MKPointAnnotation
    
    var coordinate = CLLocationCoordinate2DMake(0, 0)
    
    init (name: String, subtitle: String, note: MKPointAnnotation, coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        self.note = note;
        self.name = name
        self.subtitle = subtitle
    }
}