//
//  FeedController.swift
//  TwitterClone
//
//  Created by Huseyn Valiyev on 2.10.2021.
//

import UIKit

class FeedController: UIViewController {

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

}
