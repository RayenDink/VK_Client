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
    @IBOutlet weak var animationButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        friendImage.layer.cornerRadius = friendImage.frame.size.height / 2
        animationButton.layer.cornerRadius = friendImage.frame.size.height / 2
        friendImage.contentMode = .scaleAspectFill
    }
    
    @IBAction func animatedImage(_ sender: UIButton) {
        
        let animation = CASpringAnimation(keyPath: "transform.scale")
        
        animation.fromValue = 0.8
        animation.toValue = 1
        animation.stiffness = 200
        animation.mass = 5
        animation.duration = 5
        animation.fillMode = CAMediaTimingFillMode.backwards
        
        self.friendImage.layer.add(animation, forKey: nil)
    }
    
    func configure(for model: User) {
        
        guard let name = model.firstName,
              let lastName = model.lastName else { return }
        
        nameSurnameLabel.text = name + " " + lastName
        
        guard let url = model.photo100,
              let imageURL = URL(string: url),
              let imageData = try? Data(contentsOf: imageURL) else { return }
        
        DispatchQueue.main.async { [weak self] in
            
            self?.friendImage.image = UIImage(data: imageData)
        }
    }
}

