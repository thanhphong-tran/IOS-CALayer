//
//  ViewController.swift
//  layers
//
//  Created by Pranjal Satija on 5/14/16.
//  Copyright © 2016 Pranjal Satija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet fileprivate var box: UIView!
    
    override func viewDidLoad() {
        box.layer.cornerRadius = 5;
        
        box.layer.shadowOffset = CGSize(width: 5, height: 5)
        box.layer.shadowOpacity = 0.7
        box.layer.shadowRadius = 5
        box.layer.shadowColor = UIColor(red: 44.0/255, green: 62.0/255, blue: 80.0/255, alpha: 1.0).cgColor
        
        box.layer.borderColor = UIColor.blue.cgColor
        box.layer.borderWidth = 3
        
        box.layer.contents = UIImage(named: "tree.jpg")?.cgImage
        box.layer.contentsGravity = kCAGravityResize
        box.layer.masksToBounds = false
        
        box.layer.backgroundColor = UIColor.blue.cgColor
        box.layer.opacity = 0.5
        
        // True: draw layer on background thread
        // Use: View needs to redraw frequently
        box.layer.drawAsynchronously = true
        
        // True: the layer is draw once, store bitmap for redrawing.
        // Use: View doesn't need to redraw frequently
        box.layer.shouldRasterize = false
    }
}
