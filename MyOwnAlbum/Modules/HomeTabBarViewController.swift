//
//  HomeTabBarViewController.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import UIKit

class HomeTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().tintColor = .blue
        
        let album = ModuleBuilder.shared.createAlbum(withNav: true)
        let profile = ModuleBuilder.shared.createProfile(withNav: true)
        
        album.tabBarItem = UITabBarItem(title: "Album", image: nil, selectedImage: nil)
        profile.tabBarItem = UITabBarItem(title: "Profile", image: nil, selectedImage: nil)
        
        self.viewControllers = [album,profile]
    }

}
