//
//  NewsViewController.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import UIKit

class NewsViewController: UIViewController {
    
    private let refreshControl = UIRefreshControl()
    private let networkManager = NetworkManager()
    
    var news = [NewsModel]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchRequestNews()
        setupRefreshControl()
    }
    
    func setupRefreshControl() {
        
        refreshControl.tintColor = .white
        refreshControl.addTarget(self, action: #selector(reload), for: .valueChanged)
        tableView.addSubview(refreshControl)
    }
    
    func fetchRequestNews() {
        
        networkManager.fetchRequestNews { news in
            
            self.news = news
            
            OperationQueue.main.addOperation { [weak self] in
                self?.tableView.reloadData()
            }
        }
        
        refreshControl.endRefreshing()
    }
}

extension NewsViewController {
    
    @objc private func reload() {
        
        fetchRequestNews()
    }
}

extension NewsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCell
        
        let newsItem = news[indexPath.row]
        
        cell.configure(for: newsItem)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
