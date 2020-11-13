//
//  Session.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import Foundation

class Session {
    
    static let shared = Session()
    
    var token: String?
    var userId: Int?
    
    private init(){}
}
