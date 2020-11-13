//
//  Response.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import Foundation

class Response<T: Decodable>: Decodable {
    
    let response: Items<T>?
}
