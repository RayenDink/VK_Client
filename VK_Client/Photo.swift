//
//  Photo.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import Foundation
import RealmSwift

class Photo: Object, Decodable {
    
    @objc dynamic var id = 0
    @objc dynamic var ownerId = 0
    var sizes = List<Sizes>()
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    override static func indexedProperties() -> [String] {
        return ["ownerId"]
    }
}
