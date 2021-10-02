//
//  MainTabController.swift
//  TwitterClone
//
//  Created by Huseyn Valiyev on 2.10.2021.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    private func configureViewControllers() {
        let feed = templateNavigationController(image: Images.tabBarHome!, rootViewController: FeedController())
        let explore = templateNavigationController(image: Images.tabBarSearch!, rootViewController: ExploreController())
        let notifications = templateNavigationController(image: Images.tabBarNotification!, rootViewController: NotificationsController())
        let conversations = templateNavigationController(image: Images.tabBarConverstion!, rootViewController: ConversationsController())
        
        viewControllers = [feed, explore, notifications, conversations]
    }
    
    private func templateNavigationController(image: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
}
