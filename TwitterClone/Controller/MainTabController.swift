//
//  MainTabController.swift
//  TwitterClone
//
//  Created by Huseyn Valiyev on 2.10.2021.
//

import UIKit

class MainTabController: UITabBarController {
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(Images.stickButtonImage, for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
        configureUI()
    }
    
    @objc func actionButtonTapped() {
        print("Action Button tapped")
    }
    
    private func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
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
