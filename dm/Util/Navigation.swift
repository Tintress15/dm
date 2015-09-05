//
//  Navigation.swift
//  dm
//
//  Created by mpc on 9/5/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController {
    func performExoSegueWithIdentifier(storyboard: String, viewController: String) {
        var storyboard = UIStoryboard(name: storyboard, bundle: nil)
        var controller = storyboard.instantiateViewControllerWithIdentifier(viewController) as! UIViewController
        
        presentViewController(controller, animated: true, completion: nil)
    }
}