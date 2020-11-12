//
//  DetailFriendController.swift
//  VK_Client
//
//  Created by Rayen on 11/12/20.
//

import UIKit

  class DetailFriendController: UICollectionViewController {

  // Пустой массив:
     var friendsImage = [User]()

      override func viewDidLoad() {
         super.viewDidLoad()
     }

      // MARK: UICollectionViewDataSource

     override func numberOfSections(in collectionView: UICollectionView) -> Int {
         return 1
     }

 
      override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return friendsImage.count
     }

      override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

  // Кастим до DetailFriendCell:
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailFriendCell", for: indexPath) as! DetailFriendCell

          let friendImage = friendsImage[indexPath.row].imageFriend
         cell.detailFriendImage.image = friendImage

          return cell
     }
 }
