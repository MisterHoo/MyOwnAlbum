//
//  UserData.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import Foundation
import UIKit

class UserData{
    static var shared = UserData()
    
    var user : User?
    
    init() {
        user = User(id: 0, name: "Mister Hoo", coverImage: UIImage(named: "Profile")!, gender: "Male", phone: "081234567890")
    }
}
