//
//  FeedController.swift
//  TwitterClone
//
//  Created by Huseyn Valiyev on 2.10.2021.
//

import UIKit
import SDWebImage

class FeedController: UIViewController {
    
    var user: User? {
        didSet { configureLeftBarButton()}
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        let imageView = UIImageView(image: Images.twitterNavLogo)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
    
    func configureLeftBarButton() {
        guard let user = user else { return }
        let profileImageView = UIImageView()
        profileImageView.setDimensions(width: 32, height: 32)
        profileImageView.layer.cornerRadius = 32 / 2
        profileImageView.layer.masksToBounds = true
        profileImageView.sd_setImage(with: user.profileImageUrl, completed: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: profileImageView)
    }

}
