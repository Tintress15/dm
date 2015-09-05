//
//  LoginViewController.swift
//  dm
//
//  Created by mpc on 9/5/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var username    : UITextField!
    @IBOutlet weak var password    : UITextField!
    @IBOutlet weak var loginButton : DMButton!
    
    
    //MARK: - IBActions
    @IBAction func loginButtonPressed(sender: AnyObject) {
        
    }
    
    //MARK: - Internal methods
    override func viewDidLoad() {
        super.viewDidLoad()

        username.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    //MARK: - Navigation

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
