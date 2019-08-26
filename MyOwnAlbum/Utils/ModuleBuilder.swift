
//
//  ModuleBuilder.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import Foundation
import UIKit

class ModuleBuilder {
    static let shared = ModuleBuilder()
    
    func createHomeTabBar() -> UIViewController {
        let view = HomeTabBarViewController()
        return view
    }
    
    func createLogin() -> UIViewController {
        let view = LoginViewController()
        return view
    }
    
    func createAlbum(withNav : Bool) -> UIViewController{
        let view = AlbumViewController()
        if withNav{
            let nvc = UINavigationController(rootViewController: view)
            return nvc
        }
        return view
    }
    
    func createProfile(withNav : Bool) -> UIViewController{
        let view = ProfileViewController()
        if withNav{
            let nvc = UINavigationController(rootViewController: view)
            return nvc
        }
        return view
    }
    
    func createPhotos(album: Album) -> UIViewController {
        let view = PhotosViewController()
        view.album = album
        return view
    }
}
