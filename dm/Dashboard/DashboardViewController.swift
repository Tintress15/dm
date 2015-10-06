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
    
    //TODO: HUD, Exploding container view (old mac style), 
    
    
    //MARK: - Internal methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
