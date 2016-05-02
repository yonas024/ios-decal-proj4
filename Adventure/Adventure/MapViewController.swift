//
//  MapViewController.swift
//  Adventure
//
//  Created by Yonas Kbrom on 4/27/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var menu: UIBarButtonItem!
    
    var manager = CLLocationManager()
    
    var nextEvent: Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
//        print(profiles.first?.firstName)
//        print(profiles.first?.lastName)
        
        if self.revealViewController() != nil {
            menu.target = self.revealViewController()
            menu.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        let UCBerkeley = CLLocationCoordinate2DMake(37.87170292, -122.26088047);
        let span = MKCoordinateSpanMake(0.03, 0.03)
        let region = MKCoordinateRegionMake(UCBerkeley, span)
        map.setRegion(region, animated: true)
        
        var location = Locations()
        
        for i in destinations {
            map.addAnnotation(i)
        }
    
    }
    
    
    
//    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        self.performSegueWithIdentifier("showImage", sender: self)
//    }
//    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showEvent" {
            let s = segue.destinationViewController as! EventViewController
            s.event = nextEvent
            //print("hello")
        }
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        
        if annotation is MKUserLocation {
            return nil
        }
        
        let reuseId = "pin"
        var pinView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId) as? MKPinAnnotationView
        
        if pinView == nil {
            //println("Pinview was nil")
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            pinView!.canShowCallout = true
            pinView!.animatesDrop = true
        }
        
        
        let button = UIButton(type: UIButtonType.DetailDisclosure)
        //print("\(annotation.title)")
        
        var event = Event(name: annotation.title as String!!, subtitle: annotation.subtitle as String!!, note: annotation as! MKPointAnnotation, coordinate: annotation.coordinate)
        
        events.append(event)
        button.tag = events.count-1
        button.addTarget(self, action: "doSomething:", forControlEvents: .TouchUpInside)
        pinView?.rightCalloutAccessoryView = button
        return pinView
    }
    
    func doSomething(sender:UIButton) {
        for i in events {
            if i.name == events[sender.tag].name {
                nextEvent = i
                self.performSegueWithIdentifier("showEvent", sender: self)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
