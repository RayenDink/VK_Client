//
//  MyGroupsCell.swift
//  VK_Client
//
//  Created by Rayen on 11/12/20.
//

import UIKit

class MyGroupsCell: UITableViewCell {

    @IBOutlet weak var myGroupNameLabel: UILabel!
    @IBOutlet weak var myGroupImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()

        myGroupImage.layer.cornerRadius = myGroupImage.frame.size.height / 2
        myGroupImage.contentMode = .scaleAspectFill
    }

    func configure(for model: Group) {
        myGroupNameLabel.text = model.nameGroup
        myGroupImage.image = UIImage(named: model.imageGroup)
    }
}
