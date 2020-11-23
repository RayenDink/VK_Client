//
//  SavingDataOperation.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import Foundation
 import RealmSwift

  class SavingDataOperation<T: Object & Codable>: Operation {

      override func main() {
         guard let parseData = dependencies.first as? ParseData<T>,
               let outputData = parseData.outputData else { return }

          do {
             let realm = try Realm()
             let oldValues = realm.objects(T.self)
             realm.beginWrite()
             realm.delete(oldValues)
             realm.add(outputData)
             try realm.commitWrite()

              print("Completed Saving")
         } catch {
             print(error)
         }
     }
 }
