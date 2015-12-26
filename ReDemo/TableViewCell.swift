//
//  TableViewCell.swift
//  ReDemo
//
//  Created by RyohTsukahara on 12/17/15.
//  Copyright © 2015 test. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK: - Properties -
    @IBOutlet weak var labelText: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
