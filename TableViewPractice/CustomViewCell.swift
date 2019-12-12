//
//  CustomViewCell.swift
//  TableViewPractice
//
//  Created by 板垣智也 on 2019/12/10.
//  Copyright © 2019 板垣智也. All rights reserved.
//

import UIKit

class CustomViewCell: UITableViewCell {

    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var customImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(indexPath: IndexPath) {
        self.customLabel.text = String(indexPath.row + 1)
        self.imageView!.image = UIImage(named: "chacha_maru.jpg")
    }
    
}
