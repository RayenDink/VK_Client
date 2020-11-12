//
//  DetailFriendCell.swift
//  VK_Client
//
//  Created by Rayen on 11/12/20.
//

import UIKit

class DetailFriendCell: UICollectionViewCell {

    @IBOutlet weak var detailFriendImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    func configure(for model: User) {
        detailFriendImage.image = UIImage(named: model.imageFriend)
    }
}
