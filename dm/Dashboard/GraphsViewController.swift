//
//  GraphsViewController.swift
//  dm
//
//  Created by mpc on 10/7/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import UIKit

class GraphsViewController: UIViewController {

    
    @IBOutlet weak var barGraphButton    : DMButton!
    @IBOutlet weak var barGraph3DButton  : DMButton!
    @IBOutlet weak var scatterPlotButton : DMButton!
    @IBOutlet weak var pieGraphButton    : DMButton!
    @IBOutlet weak var pieGraph3DButton  : DMButton!
    @IBOutlet weak var graphView         : UIView!
    
    func setConstraints() {
        graphView.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)

        barGraphButton.snp_makeConstraints { (make) -> Void in
            make.height.equalTo(83)
            make.width.equalTo(barGraphButton.snp_height)
            make.top.equalTo(graphView.snp_top).offset(130)
            make.left.equalTo(graphView.snp_left).offset(40)
            
        }
        
        
        
        
    }
    
    
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
