//
//  BaseCollectionViewCell.swift
//  Example
//
//  Created by JiongXing on 2018/10/14.
//  Copyright © 2021 Shenzhen Hive Box Technology Co.,Ltd All rights reserved.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    lazy var imageView: UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    lazy var playButtonView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage.init(named: "lantern_Play")
        iv.isHidden = true
        return iv
    }()
    
    lazy var livePhotoView: UIImageView = {
        let iv = UIImageView()
        iv.isHidden = true
        return iv
    }()
    
    var livePhotoBadgeImage: UIImage! {
        didSet {
            livePhotoView.isHidden = false
            livePhotoView.image = livePhotoBadgeImage
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(playButtonView)
        contentView.addSubview(livePhotoView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
        playButtonView.frame.origin = contentView.center
        playButtonView.frame = CGRect.init(x: contentView.frame.width/2-25, y: contentView.frame.height/2-25, width: 50, height: 50)
        livePhotoView.frame = CGRect.init(x: contentView.frame.width - 50, y: contentView.frame.height - 50, width: 40, height: 40)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
