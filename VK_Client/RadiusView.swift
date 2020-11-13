//
//  RadiusView.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import UIKit

class RadiusView: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        frame = CGRect(x: 20, y: 20, width: frame.size.width, height: frame.size.height)
        
        layer.cornerRadius = frame.size.height / 2
        clipsToBounds = true
    }
}
