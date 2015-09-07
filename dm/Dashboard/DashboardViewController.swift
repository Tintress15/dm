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
            case 0: println(" \(index) pressed")
            case 1: println(" \(index) pressed")
            case 2: println(" \(index) pressed")
            case 3: println(" \(index) pressed")
            case 4: println(" \(index) pressed")
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
        
        cells.append(cellFactory("ic_cloud"))
        cells.append(cellFactory("ic_system"))
        cells.append(cellFactory("ic_place"))
        cells.append(cellFactory("ic_brush"))
        //cells.append(cellFactory("ic_art"))
        
        let floatingFrame = CGRect(x: self.view.frame.width - 56 - 16, y: self.view.frame.height - 56 - 16, width: 56, height: 56)
        let bottomRightButton = createButton(floatingFrame, .Up)
        
        let floatingFrame2 = CGRect(x: 16, y: 16, width: 56, height: 56)
        let topLeftButton = createButton(floatingFrame2, .Right)
        
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
