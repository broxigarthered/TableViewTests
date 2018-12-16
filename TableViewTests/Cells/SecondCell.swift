//
//  SecondCell.swift
//  TableViewTests
//
//  Created by Adelina Dutskinova on 16.12.18.
//  Copyright © 2018 Adelina Dutskinova. All rights reserved.
//

import UIKit

class SecondCell: UITableViewCell {

    @IBOutlet weak var cellName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cellName.text = "SECOND CELL"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
