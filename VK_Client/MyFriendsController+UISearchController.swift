//
//  MyFriendsController+UISearchController.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import UIKit

extension MyFriendsController: UISearchResultsUpdating {
    
    
    func setupSearchController() {
    
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Friends"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!)
        
    }
    
    func filterContentForSearchText(_ searchText: String) {
        
        filteredUsers = friends.filter{ (user: User) -> Bool in
        
            guard let name = user.firstName,
                  let lastName = user.lastName else { return false }
            let fullName = name + " " + lastName
            
            return fullName.contains(searchText)
        }
        
        tableView.reloadData()
    }
}
