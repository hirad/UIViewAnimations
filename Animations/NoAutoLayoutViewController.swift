//
//  NoAutoLayoutViewController.swift
//  Animations
//
//  Created by Hirad Motamed on 2015-08-04.
//  Copyright (c) 2015 Pendar Labs. All rights reserved.
//

import Foundation
import UIKit


class NoAutoLayoutViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var orangeView: UIView!
    
    @IBAction func animateMe(sender: AnyObject) {
        let targetX = self.view.frame.size.width - 60
        
        let newRedFrame = CGRectMake(targetX, 68, 50, 50)
        UIView.animateWithDuration(8, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.4, options: .CurveEaseIn, animations: { () -> Void in
            self.redView.frame = newRedFrame
        }, completion: nil)
        
        let newGreenFrame = CGRectMake(targetX, 145, 50, 50)
        UIView.animateWithDuration(3, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .CurveEaseIn, animations: { () -> Void in
            self.greenView.frame = newGreenFrame
        }, completion: nil)
        
        let newOrangeFrame = CGRectMake(targetX, 218, 50, 50)
        UIView.animateWithDuration(3, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.5, options: .CurveEaseIn, animations: { () -> Void in
            self.orangeView.frame = newOrangeFrame
            }, completion: { completed in self.reset() })
    }

    func reset() {
        UIView.animateWithDuration(0.8, delay: 5, options: .CurveLinear, animations: {
            let newRedFrame = CGRectMake(16, 68, 50, 50)
            let newGreenFrame = CGRectMake(16, 145, 50, 50)
            let newOrangeFrame = CGRectMake(16, 218, 50, 50)
            self.redView.frame = newRedFrame
            self.greenView.frame = newGreenFrame
            self.orangeView.frame = newOrangeFrame
        }, completion: nil)
    }
    
    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}