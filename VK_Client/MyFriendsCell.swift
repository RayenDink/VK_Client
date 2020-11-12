//
//  MyFriendsCell.swift
//  VK_Client
//
//  Created by Rayen on 11/12/20.
//

import UIKit

class MyFriendsCell: UITableViewCell {

    @IBOutlet weak var nameSurnameLabel: UILabel!
    @IBOutlet weak var friendImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()

        friendImage.layer.cornerRadius = friendImage.frame.size.height / 2
        friendImage.contentMode = .scaleAspectFill
    }

    func configure(for model: User) {
        nameSurnameLabel.text = model.nameSurnameFriend
        friendImage.image = UIImage(named: model.imageFriend)
    }
}
