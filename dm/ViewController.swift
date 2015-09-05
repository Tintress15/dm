//
//  ViewController.swift
//  dm
//
//  Created by mpc on 9/5/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("I am in ViewController:viewDidLoad")
        
        self.performExoSegueWithIdentifier("Onboarding", viewController: "LoginViewController")
        
        //self.performExoSegueWithIdentifier(<#storyboard: String#>, viewController: <#String#>)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

