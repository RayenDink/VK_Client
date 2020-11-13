//
//  RealmManager.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import Foundation
import RealmSwift

 class RealmManager {

     func updateFriends(for friends: [User]) {

         do {

             let realm = try Realm()
             let oldValue = realm.objects(User.self)

             realm.beginWrite()
             realm.delete(oldValue)
             realm.add(friends)

             try realm.commitWrite()
         } catch {

             print(error)
         }
     }

     func updateGroups(for groups: [Group]) {

         do {

             let realm = try Realm()
             let oldValue = realm.objects(Group.self)

             realm.beginWrite()
             realm.delete(oldValue)
             realm.add(groups)

             try realm.commitWrite()
         } catch {

             print(error)
         }
     }

     func updatePhotos(for photos: [Photo]) {

         do {

             let realm = try Realm()
             let oldValue = realm.objects(Photo.self)

             realm.beginWrite()
             realm.delete(oldValue)
             realm.add(photos)

             try realm.commitWrite()
         } catch {

             print(error)
         }
     }
 }
