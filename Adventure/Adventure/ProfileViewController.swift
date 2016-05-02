//
//  ProfileViewController.swift
//  Adventure
//
//  Created by Yonas Kbrom on 4/27/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, iCarouselDelegate, iCarouselDataSource {
    
    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var last: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var carousel: iCarousel!
    
    
    var profile = Profile(first: "", last: "", email: "", password: "", current: true)
    
    var pics = [UIImage]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        var a = resizeImage(UIImage(named: "The Big C.gif")!, newWidth: 200)
        var b = resizeImage(UIImage(named: "Campanile.gif")!, newWidth: 200)
        var c = resizeImage(UIImage(named: "Cesar Chavez Park.gif")!, newWidth: 200)
        var d = resizeImage(UIImage(named: "Berkeley Marina.gif")!, newWidth: 200)
        var e = resizeImage(UIImage(named: "Memorial Glade.gif")!, newWidth: 200)
        
        pics = [a,b,c,d,e]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //dictionary.setValue("dog", forKey: "cat")
        carousel.type = iCarouselType.CoverFlow
        for i in profiles {
            if i.current == true {
                profile = i
            }
        }
        first.text = profile.firstName
        last.text = profile.lastName
        email.text = profile.email

    }
    
    func numberOfItemsInCarousel(carousel: iCarousel) -> Int {
        return pics.count
    }
    
    func carousel(carousel: iCarousel, viewForItemAtIndex index: Int, reusingView view: UIView?) -> UIView {
        var temp = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//        var button = UIButton()
        temp.backgroundColor = UIColor(patternImage:pics[index])
//        temp.addSubview(button)
        return temp
    }
    
    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {
        
        let scale = newWidth / image.size.width
        let newHeight = image.size.height * scale
        UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight))
        image.drawInRect(CGRectMake(0, 0, newWidth, newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
    func carousel(carousel: iCarousel, valueForOption option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if option == iCarouselOption.Spacing {
            return value * 1.2
        }
        return value
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
