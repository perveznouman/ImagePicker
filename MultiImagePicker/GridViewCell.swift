//
//  AlbumListTableViewController.swift
//  MultiImagePicker
//
//  Created by Nouman Pervez on 19/06/19.
//  Copyright © 2019 Nouman Pervez. All rights reserved.
//


import UIKit

public protocol GridViewCellProtocol {
    
    var isSelected: Bool { get set}
    

}

class GridViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var livePhotoBadgeImageView: UIImageView!
    @IBOutlet var tickMarkView: UIImageView!

    var representedAssetIdentifier: String!
    
    var thumbnailImage: UIImage! {
        didSet {
            imageView.image = thumbnailImage
        }
    }
    var livePhotoBadgeImage: UIImage! {
        didSet {
            livePhotoBadgeImageView.image = livePhotoBadgeImage
        }
    }
    
    open override var isSelected: Bool {
        didSet {
            print("isSelected")
            tickMarkView.isHidden = !isSelected
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        livePhotoBadgeImageView.image = nil
    }
}
