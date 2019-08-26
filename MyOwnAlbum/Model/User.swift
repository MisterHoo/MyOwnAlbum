//
//  User.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import Foundation
import UIKit

class User {
    let id : Int
    var name : String?
    var email : String?
    var password : String?
    var coverImage : UIImage?
    var gender : String?
    var phone : String?
    
    init(id: Int, name: String? = nil, email: String? = nil, password: String? = nil, coverImage: UIImage? = nil, gender: String? = nil, phone: String? = nil) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
        self.coverImage = coverImage
        self.gender = gender
        self.phone = phone
    }
    
}
