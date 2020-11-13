//
//  ImagesFriendController.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import UIKit

class ImagesFriendController: UIViewController {
    
    var currentPage = 0
    var numberOfPages = 0

    @IBOutlet weak var imagesFriend: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        pageControl.currentPage = currentPage
        pageControl.numberOfPages = numberOfPages
        
        self.tabBarController?.tabBar.isHidden = true
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
    }
}

extension ImagesFriendController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return imagesFriend
    }
}
