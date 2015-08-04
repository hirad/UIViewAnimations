//
//  ViewController.swift
//  Animations
//
//  Created by Hirad Motamed on 2015-08-04.
//  Copyright (c) 2015 Pendar Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var redWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var animateButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func animateConstraint(sender: AnyObject) {
        self.redWidthConstraint.constant = 200
        self.view.setNeedsLayout()
        UIView.animateWithDuration(0.8, animations: { () -> Void in
            self.view.layoutIfNeeded()
        })
    }
    
    @IBAction func transformMe(sender: AnyObject) {
        UIView.animateWithDuration(0.8, animations: { () -> Void in
            self.redView.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
            self.greenView.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_2))
            self.orangeView.transform = CGAffineTransformMakeScale(2.0, 3.0)
        })
    }
    
    @IBAction func transitionMe(sender: AnyObject) {
        let newView: UIView = UIView(frame: CGRectMake(16, 218, 50, 50))
        newView.backgroundColor = UIColor.yellowColor()
        UIView.transitionFromView(self.orangeView, toView: newView, duration: 0.8, options: .TransitionFlipFromRight, completion: nil)
    }

}

