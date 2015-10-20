//
//  RegistrationViewController.swift
//  dm
//
//  Created by mpc on 10/20/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var username       : DMTextField!
    @IBOutlet weak var password       : DMTextField!
    @IBOutlet weak var registerButton : DMButton!
    
    
    //MARK: - IBActions
 
    @IBAction func registerButtonPressed(sender: AnyObject) {
        print("Registration button pressed")
    }
    
    
    //MARK: - Constraints
    func setConstraints() {
        
    }
    
    
    //MARK: - Internal methods
    override func viewDidLoad() {
        super.viewDidLoad()

        setConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
