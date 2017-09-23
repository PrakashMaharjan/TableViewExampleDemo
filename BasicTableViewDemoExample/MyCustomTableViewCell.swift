//
//  MyCustomTableViewCell.swift
//  BasicTableViewDemo
//
//  Created by prakash Maharjan on 9/23/17.
//  Copyright © 2017 Prakash Maharjan. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myCustomImageView: UIImageView!
    
    @IBOutlet weak var myTitleLable: UILabel!
    
    @IBOutlet weak var myDetailTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
