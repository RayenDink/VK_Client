//
//  ParseData.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import Foundation

class ParseData<T:Codable>: Operation {

    var outputData: [T]?

    override func main() {
       guard let dataGet = dependencies.first as? dataGet,
             let data = dataGet.data else { return }

        let decoder = JSONDecoder()

        decoder.keyDecodingStrategy = .convertFromSnakeCase

        guard let dataParsed = try? decoder.decode(Response<T>.self, from: data).response?.items else { return }
       outputData = dataParsed
   }
}
