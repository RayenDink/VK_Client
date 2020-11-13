//
//  Sizes.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import Foundation
import RealmSwift

class Sizes: Object, Decodable {
    
    @objc dynamic var type: String? = nil
    @objc dynamic var src: String? = nil
}
