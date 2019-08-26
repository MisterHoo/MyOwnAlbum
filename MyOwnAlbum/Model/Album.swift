//
//  Album.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import Foundation
import UIKit

class Album {
    let id : Int
    let name : String?
    let coverImage : UIImage?
    let images : [UIImage]?
    
    init(id : Int, name : String? = nil, images: [UIImage]? = nil) {
        self.id = id
        self.name = name
        self.images = images
        if let firstImage = images?.first{
            self.coverImage = firstImage
        } else {
            self.coverImage = nil
        }
    }
}
