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
        
        
//        let marina = CLLocationCoordinate2DMake(37.86638406, -122.31057644);
//        let marinaNote = MKPointAnnotation();
//        marinaNote.coordinate = marina;
//        marinaNote.title = "Berkeley Marina"
//        marinaNote.subtitle = "Come check out the great view of the Golden Gate Bridge from the Berkeley Marina!"
        
        var location = Locations()
        
        for i in destinations {
            map.addAnnotation(i)
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
        
        pinView?.rightCalloutAccessoryView = button
        
        return pinView
    }
    
    
//    func displayMarkers() -> Void
//    {
//
//        let annotationView = MKAnnotationView()
//        
//        let detailButton: UIButton = UIButton(type: UIButtonType.DetailDisclosure)
//        annotationView.rightCalloutAccessoryView = detailButton
//
//    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
