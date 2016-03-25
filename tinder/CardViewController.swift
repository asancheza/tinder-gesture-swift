//
//  ViewController.swift
//  tinder
//
//  Created by eMobc SL on 24/03/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    var initialCenterPoint: CGPoint!

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPan(sender: UIPanGestureRecognizer) {
        if sender.state == UIGestureRecognizerState.Began {
            initialCenterPoint = imageView.center
        } else {
            imageView.center.x = initialCenterPoint.x + sender.translationInView(imageView).x
        }
    }

}

