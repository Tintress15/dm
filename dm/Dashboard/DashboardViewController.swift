//
//  DashboardViewController.swift
//  dm
//
//  Created by mpc on 9/12/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    //MARK: - IBOutlets
    
    @IBOutlet weak var dashboardView  : UIView!
    @IBOutlet weak var myDataButton   : DMButton!
    @IBOutlet weak var logsButton     : DMButton!
    @IBOutlet weak var medsButton     : DMButton!
    @IBOutlet weak var graphButton    : DMButton!
    @IBOutlet weak var foodButton     : DMButton!
    @IBOutlet weak var settingsButton : DMButton!
    
    
    
    
    
    
    //MARK: - Properties
    
    
    
    //MARK: - IBActions
    
    @IBAction func myDataButtonPressed(sender: AnyObject) {
        print("myDataButtonPressed")
    }
    
    @IBAction func logsButtonPressed(sender: AnyObject) {
        
    }
    
    @IBAction func medsButtonPressed(sender: AnyObject) {
        
    }
    
    @IBAction func graphsButtonPressed(sender: AnyObject) {
        
    }
    
    @IBAction func foodButtonPressed(sender: AnyObject) {
        
    }
    
    @IBAction func settingsButtonPressed(sender: AnyObject) {
        
    }
    
    
    
    //MARK: - Constraints
    func setButtonConstraints() {
        myDataButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.dashboardView.snp_top).offset(90)
            make.left.equalTo(self.dashboardView.snp_left).offset(30)
            make.height.equalTo(83)
            make.width.equalTo(self.myDataButton.snp_height)
        }
        
        logsButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(myDataButton.snp_top)
            make.left.equalTo(myDataButton.snp_right).offset(30)
            make.height.equalTo(myDataButton.snp_height)
            make.width.equalTo(myDataButton.snp_width)
        }
        
        medsButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(logsButton.snp_top)
            make.left.equalTo(logsButton.snp_right).offset(30)
            make.height.equalTo(logsButton.snp_height)
            make.width.equalTo(logsButton.snp_width)
        }
        
        graphButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(myDataButton.snp_bottom).offset(30)
            make.left.equalTo(dashboardView.snp_left).offset(30)
            make.height.equalTo(logsButton.snp_height)
            make.width.equalTo(logsButton.snp_width)
        }
        
        foodButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(logsButton.snp_bottom).offset(30)
            make.left.equalTo(graphButton.snp_right).offset(30)
            make.height.equalTo(logsButton.snp_height)
            make.width.equalTo(logsButton.snp_width)
        }
        
        settingsButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(medsButton.snp_bottom).offset(30)
            make.left.equalTo(foodButton.snp_right).offset(30)
            make.height.equalTo(foodButton.snp_height)
            make.width.equalTo(foodButton.snp_width)
        }
        
    }
    
    
    
    //TODO: HUD, Exploding container view (old mac style), 
    
    
    //MARK: - Internal methods
    override func viewDidLoad() {
        super.viewDidLoad()

        dashboardView.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)
        setButtonConstraints()
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
