//
//  ExploreController.swift
//  TwitterClone
//
//  Created by Huseyn Valiyev on 2.10.2021.
//

import UIKit

class ExploreController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }

}
