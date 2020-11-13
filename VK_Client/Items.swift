//
//  Items.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import Foundation

class Items<T: Decodable>: Decodable {
    
    let items: [T]
}
