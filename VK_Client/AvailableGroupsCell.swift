//
//  AvailableGroupsCell.swift
//  VK_Client
//
//  Created by Rayen on 11/12/20.
//

import UIKit

class AvailableGroupsCell: UITableViewCell {

    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var groupImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    func configure(for model: Group) {
        groupNameLabel.text = model.nameGroup
        groupImage.image = UIImage(named: model.imageGroup)
    }
}
