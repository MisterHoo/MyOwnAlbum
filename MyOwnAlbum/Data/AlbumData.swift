//
//  AlbumData.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import Foundation
import UIKit

class AlbumData {
    static var shared = AlbumData()
    
    var albums = [Album]()
    
    init() {
        albums.append(Album(id: 0, name: "Cat", images: [UIImage(named: "Cat1")!, UIImage(named: "Cat2")!,UIImage(named: "Cat3")!, UIImage(named: "Cat4")!,UIImage(named: "Cat5")!]))
        albums.append(Album(id: 1, name: "Hams", images: [UIImage(named: "Hams1")!,UIImage(named: "Hams2")!,UIImage(named: "Hams3")!,UIImage(named: "Hams4")!]))
        albums.append(Album(id: 2, name: "Dog", images: [UIImage(named: "Dog1")!,UIImage(named: "Dog2")!,UIImage(named: "Dog3")!]))
    }
}
