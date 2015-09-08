//
//  DashboardViewController.swift
//  dm
//
//  Created by mpc on 9/6/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import UIKit
import LiquidFloatingActionButton

class DashboardViewController: UIViewController, LiquidFloatingActionButtonDataSource, LiquidFloatingActionButtonDelegate {

    var cells: [LiquidFloatingCell] = []
    var floatingActionButton: LiquidFloatingActionButton!
    
    //MARK: - Segue methods
    func graphSegue() {
        performExoSegueWithIdentifier("Graphs", viewController: "GraphsIndentifier")
    }
    
    func moreSegue() {
        performExoSegueWithIdentifier("More", viewController: "MoreIdentifier")
    }
    
    //MARK: LiquidFloating methods
    func numberOfCells(liquidFloatingActionButton: LiquidFloatingActionButton) -> Int {
        return cells.count
    }
    
    func cellForIndex(index: Int) -> LiquidFloatingCell {
        return cells[index]
    }
    
    func liquidFloatingActionButton(liquidFloatingActionButton: LiquidFloatingActionButton, didSelectItemAtIndex index: Int) {
        
        if let _ = floatingActionButton {
           floatingActionButton.close()
        } else {
            switch index {
            case 0: println("Settings segue")
            case 1: println("Graphs segue")
                    graphSegue()
            case 2: println("Data segue")
            case 3: println("Messages segue")
            case 4: println("More segue")
                    moreSegue()
            default: println("out of scope")
            }
        }
    }
    
    
    //MARK: - Internal methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let createButton: (CGRect, LiquidFloatingActionButtonAnimateStyle) -> LiquidFloatingActionButton = { (frame, style) in
            let floatingActionButton = LiquidFloatingActionButton(frame: frame)
            floatingActionButton.animateStyle = style
            floatingActionButton.dataSource = self
            floatingActionButton.delegate = self
            return floatingActionButton
        }
        
        
        let cellFactory: (String) -> LiquidFloatingCell = { (iconName) in
            return LiquidFloatingCell(icon: UIImage(named: iconName)!)
        }
        
        cells.append(cellFactory("ic_settings"))
        cells.append(cellFactory("ic_graph"))
        cells.append(cellFactory("ic_data"))
        cells.append(cellFactory("ic_message"))
        cells.append(cellFactory("ic_more"))
        
        let floatingFrame = CGRect(x: self.view.frame.width - 56 - 16, y: self.view.frame.height - 56 - 16, width: 56, height: 56)
        let bottomRightButton = createButton(floatingFrame, .Up)
        
        let floatingFrame2 = CGRect(x: 16, y: 16, width: 56, height: 56)
        let topLeftButton = createButton(floatingFrame2, .Down)
        
        self.view.addSubview(bottomRightButton)
        self.view.addSubview(topLeftButton)
        
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
