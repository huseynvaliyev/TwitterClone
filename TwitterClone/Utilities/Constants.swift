//
//  Constants.swift
//  TwitterClone
//
//  Created by Huseyn Valiyev on 2.10.2021.
//

import UIKit
import Firebase

enum Images {
    static let tabBarHome = UIImage(named: "home_unselected")
    static let tabBarSearch = UIImage(named: "search_unselected")
    static let tabBarNotification = UIImage(named: "like_unselected")
    static let tabBarConverstion = UIImage(named: "ic_mail_outline_white_2x-1")
    static let twitterNavLogo = UIImage(named: "twitter_logo_blue")
    static let stickButtonImage = UIImage(named: "new_tweet")
}

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGE = STORAGE_REF.child("profile_images")

let url = "https://twitterclone-d9578-default-rtdb.europe-west1.firebasedatabase.app"
let DB_REF = Database.database(url: url).reference()
let REF_USERS = DB_REF.child("users")
