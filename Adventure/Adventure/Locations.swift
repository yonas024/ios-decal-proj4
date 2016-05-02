//
//  Locations.swift
//  Adventure
//
//  Created by Yonas Kbrom on 4/28/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

var destinations = [MKPointAnnotation]()

class Locations {
    
    init () {
        let marina = CLLocationCoordinate2DMake(37.86638406, -122.31057644);
        let marinaNote = MKPointAnnotation();
        marinaNote.coordinate = marina;
        marinaNote.title = "Berkeley Marina"
        marinaNote.subtitle = "Come check out the great view of the Golden Gate Bridge from the Berkeley Marina!"
        destinations.append(marinaNote)
        
        let cesarChavezPark = CLLocationCoordinate2DMake(37.8730241, -122.3210907);
        let cesarChavezParkNote = MKPointAnnotation();
        cesarChavezParkNote.coordinate = cesarChavezPark;
        cesarChavezParkNote.title = "Cesar Chavez Park"
        cesarChavezParkNote.subtitle = "Come to this park and fly some kites with others in the community!"
        destinations.append(cesarChavezParkNote)
        
        let campanile = CLLocationCoordinate2DMake(37.87212849, -122.25784957);
        let campanileNote = MKPointAnnotation();
        campanileNote.coordinate = campanile;
        campanileNote.title = "Campanile"
        campanileNote.subtitle = "Go atop one of the tallest college clocktowers in the world and take a glance over all of Berkeley!"
        destinations.append(campanileNote)
        
        let memorialGlade = CLLocationCoordinate2DMake(37.87319348, -122.25928187);
        let memorialGladeNote = MKPointAnnotation();
        memorialGladeNote.coordinate = memorialGlade;
        memorialGladeNote.title = "Memorial Glade"
        memorialGladeNote.subtitle = "Come to the glade and just relax with friends or just take a nap."
        destinations.append(memorialGladeNote)
        
        let bigC = CLLocationCoordinate2DMake(37.87455698, -122.2499156);
        let bigCNote = MKPointAnnotation();
        bigCNote.coordinate = bigC;
        bigCNote.title = "The Big C"
        bigCNote.subtitle = "Take a hike to the Big C and view the entire bay!"
        destinations.append(bigCNote)
        
        let gym = CLLocationCoordinate2DMake(37.868712 , -122.263756);
        let gymNote = MKPointAnnotation();
        gymNote.coordinate = gym;
        gymNote.title = "The Gym"
        gymNote.subtitle = "Go work out and get nice and fit! Or just play sports such as basketball!"
        destinations.append(gymNote)
        
        let greek = CLLocationCoordinate2DMake(37.873895 , -122.2541);
        let greekNote = MKPointAnnotation();
        greekNote.coordinate = greek;
        greekNote.title = "The Greek Theater"
        greekNote.subtitle = "Go check out a play or performance at the Greek Theater and have some fun with friends!"
        destinations.append(greekNote)
        
        let football = CLLocationCoordinate2DMake(37.870597 , -122.250624);
        let footballNote = MKPointAnnotation();
        footballNote.coordinate = football;
        footballNote.title = "The Stadium"
        footballNote.subtitle = "Go check out a football game and watch your favorite football team win!"
        destinations.append(footballNote)
        
        let park = CLLocationCoordinate2DMake(37.865549 , -122.257168);
        let parkNote = MKPointAnnotation();
        parkNote.coordinate = park;
        parkNote.title = "Peoples Park"
        parkNote.subtitle = "Roam around People's Park and meet some crazy cool strangers"
        destinations.append(parkNote)
    }
}
