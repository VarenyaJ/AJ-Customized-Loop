//
//  PredictionInputEffectTableViewCell.swift
//  Loop
//
//  Created by Nate Racklyeft on 9/4/16.
//  Copyright © 2016 Nathan Racklyeft. All rights reserved.
//

import UIKit

class PredictionInputEffectTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var subtitleLabel: UILabel!

    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        contentView.layoutMargins.right = separatorInset.left
    }
    
    var enabled: Bool = true {
        didSet {
            if enabled {
                titleLabel.textColor = UIColor.darkText
                subtitleLabel.textColor = UIColor.darkText
            } else {
                titleLabel.textColor = UIColor.secondaryLabelColor
                subtitleLabel.textColor = UIColor.secondaryLabelColor
            }
        }
    }

}
