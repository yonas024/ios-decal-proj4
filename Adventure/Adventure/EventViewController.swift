//
//  EventViewController.swift
//  Adventure
//
//  Created by Yonas Kbrom on 5/1/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class EventViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var subtitle: UITextView!
    @IBAction func addEvent(sender: AnyObject) {
        var string = event!.name
        events.append(event!)
        let alertController = UIAlertController(title: "Success!", message:
            "You have successfully added \(string) to your events!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: backView))
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    var event : Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = event?.coordinate;
        let span = MKCoordinateSpanMake(0.001, 0.001)
        let region = MKCoordinateRegionMake(location!, span)
        map.setRegion(region, animated: true)
        name.text = event?.name
        subtitle.text = event?.subtitle
        map.addAnnotation((event?.note)!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func backView(sender: AnyObject) {
        
    }
    
}
