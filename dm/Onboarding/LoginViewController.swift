//
//  LoginViewController.swift
//  dm
//
//  Created by mpc on 9/5/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var username       : UITextField!
    @IBOutlet weak var password       : UITextField!
    @IBOutlet weak var bannerView     : UIImageView!
    @IBOutlet weak var loginView      : UIView!
    @IBOutlet weak var loginButton    : DMButton!
    @IBOutlet weak var forgotPassword : DMButton!
    @IBOutlet weak var register       : DMButton!

    
    //MARK: - Methods
    func setConstraints() {
        loginView.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)
        
        print("w = \(super.view.frame.width)  h = \(super.view.frame.height)")
        
        
        loginView.snp_makeConstraints { (make) -> Void in
            make.height.equalTo(super.view.frame.height)
            make.width.equalTo(super.view.frame.width)
        }
        
        
        username.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(loginView.snp_top).offset(51)
            make.width.equalTo(204)
            make.height.equalTo(28)
            
            let frameCenter   = Int(super.view.frame.width / 2.0)
            let textBoxCenter = Int(username.frame.width / 2.0)
            let centerVal     = CGFloat(frameCenter - textBoxCenter)

            make.centerX.equalTo(centerVal)
        }
    }
    
    
    //MARK: - IBActions
    @IBAction func loginButtonPressed(sender: AnyObject) {
        performExoSegueWithIdentifier("Dashboard", viewController: "DashboardIdentifier")
    }
    
    //MARK: - Internal methods
    override func viewWillAppear(animated: Bool) {
        self.bannerView.backgroundColor = dmBlue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setConstraints()
        
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
