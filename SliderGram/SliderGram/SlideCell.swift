//
//  SlideCollectionViewCell.swift
//  SliderGram
//
//  Created by Jorge Mendoza on 5/27/18.
//  Copyright © 2018 Jorge Mendoza. All rights reserved.
//

import Foundation
import UIKit
import moa

class SlideCell:UICollectionViewCell {
    
    private var imageView:UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView()
        
        imageView?.contentMode = .scaleAspectFit
        
        self.backgroundColor = .red
        
        self.contentView.addSubview(imageView!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(imgUrl:String, contentMode:UIViewContentMode?){
        
        Moa.logger = MoaConsoleLogger

        imageView?.image = UIImage(named:imgUrl)
        
        imageView?.moa.onSuccess = { image in
            return image
        }
        
        imageView?.contentMode = contentMode ?? .scaleAspectFit
        
        imageView?.moa.url = imgUrl
        
        setupConstraints()
    }
    
    func setupConstraints(){
       // imageView?.autoPinEdgesToSuperviewEdges()
        
        self.imageView?.autoPinEdge(.top, to: .top, of: self, withOffset: 0.0)
        self.imageView?.autoPinEdge(.left, to: .left, of: self, withOffset: 0.0)
        self.imageView?.autoPinEdge(.right, to: .right, of: self, withOffset: 0.0)
        self.imageView?.autoPinEdge(.bottom, to: .bottom, of: self, withOffset: 0.0)
    }
}

//Start Protocol?
