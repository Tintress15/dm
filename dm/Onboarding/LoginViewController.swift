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
        
        let viewCenter   = loginView.frame.width / 2
        let widgetCenter = username.frame.width / 2
        
        print("viewCenter = \(viewCenter) widgetCenter \(widgetCenter)")
        
        
        //TODO: *** Center the view, not the widgets ***
        
        username.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(loginView.snp_top).offset(51)
            make.width.equalTo(204)
            make.height.equalTo(28)
            make.left.equalTo(widgetCenter / 2)
        }
        
        password.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(username.snp_bottom).offset(3)
            make.width.equalTo(204)
            make.height.equalTo(28)
            make.left.equalTo(widgetCenter / 2)
        }
        
        loginButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(password.snp_bottom).offset(15)
            make.width.equalTo(204)
            make.height.equalTo(28)
            make.left.equalTo(password.snp_left)
        }
        
        bannerView.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(loginButton.snp_bottom).offset(30)
            make.width.equalTo(super.view.frame.width)
            make.height.equalTo(54)
        }
        
        forgotPassword.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(bannerView.snp_bottom).offset(30)
            make.width.equalTo(username.snp_width)
            make.height.equalTo(loginButton.snp_height)
            make.left.equalTo(username.snp_left)
        }
        
        register.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(forgotPassword.snp_bottom).offset(6)
            make.width.equalTo(forgotPassword.snp_width)
            make.height.equalTo(loginButton.snp_height)
            make.left.equalTo(forgotPassword.snp_left)
        }
    }
    
    
    
    
    
    
//    func setConstraints() {
//        loginView.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)
//        
//        print("w = \(super.view.frame.width)  h = \(super.view.frame.height)")
//        
//        
//        loginView.snp_remakeConstraints { (make) -> Void in
//            make.height.equalTo(super.view.frame.height)
//            make.width.equalTo(super.view.frame.width)
//        }
//
//        username.snp_makeConstraints { (make) -> Void in
//            make.top.equalTo(loginView.snp_top).offset(51)
//            make.width.equalTo(204)
//            make.height.equalTo(28)
//            
//            //TODO: Make a resubale method for this...center(a, b) -> cVal
//            let frameCenter   = Int(super.view.frame.width / 2.0)
//            let textBoxCenter = Int(username.frame.width / 2.0)
//            let centerVal     = CGFloat(frameCenter - textBoxCenter)
//
//            print("fc = \(frameCenter)  tbc = \(textBoxCenter)  cv = \(centerVal)")
//            
//            make.left.equalTo(centerVal)
//        }
//        
//        password.snp_makeConstraints { (make) -> Void in
//            make.top.equalTo(username.snp_bottom).offset(6)
//            make.width.equalTo(204)
//            make.height.equalTo(28)
//            
//            
//            //TODO: Make a resubale method for this...center(a, b) -> cVal
//            let frameCenter   = Int(super.view.frame.width / 2.0)
//            let textBoxCenter = Int(password.frame.width / 2.0)
//            let centerVal     = CGFloat(frameCenter - textBoxCenter)
//            
//            make.left.equalTo(loginButton.snp_left)
//        }
//        
//        loginButton.snp_makeConstraints { (make) -> Void in
//            make.top.equalTo(password.snp_bottom).offset(20)
//            make.width.equalTo(204)
//            make.height.equalTo(28)
//            
//            //TODO: Make a resubale method for this...center(a, b) -> cVal
//            let frameCenter   = Int(super.view.frame.width / 2.0)
//            let textBoxCenter = Int(loginButton.frame.width / 2.0)
//            let centerVal     = CGFloat(frameCenter - textBoxCenter)
//            
//            make.left.equalTo(centerVal)
//        }
//        
//        
//    }
    
    
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
