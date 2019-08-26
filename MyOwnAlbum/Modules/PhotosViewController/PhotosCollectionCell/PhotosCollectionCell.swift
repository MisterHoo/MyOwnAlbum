//
//  PhotosCollectionCell.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import UIKit

class PhotosCollectionCell: UICollectionViewCell {

    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var ivPhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        scrollView.delegate = self
    }
    
    func configureCell(photo: UIImage) {
        ivPhoto.image = photo
    }

}

extension PhotosCollectionCell : UIScrollViewDelegate{
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return ivPhoto
    }
}
