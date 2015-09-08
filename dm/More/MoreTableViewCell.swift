//
//  MoreTableViewCell.swift
//  dm
//
//  Created by mpc on 9/7/15.
//  Copyright (c) 2015 mpc. All rights reserved.
//

import UIKit

class MoreTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var moreCategory: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
