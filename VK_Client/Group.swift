//
//  Group.swift
//  VK_Client
//
//  Created by Rayen on 11/12/20.
//

import Foundation
import RealmSwift

class Group: Object, Decodable {
    
    @objc dynamic var id = 0
    @objc dynamic var name: String? = nil
    @objc dynamic var photo50: String? = nil
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    override static func indexedProperties() -> [String] {
        return ["name"]
    }
}
