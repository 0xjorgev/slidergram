//
//  SliderCollection.swift
//  SliderGram
//
//  Created by Jorge Mendoza on 5/16/18.
//  Copyright © 2018 Jorge Mendoza. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "SlideCollectionViewCell"

class SliderCollection:UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var collection: UICollectionView!
    
    var setup:SliderSetup?
    
    var items:[String]? = ["default.jpg","default.jpg","default.jpg","default.jpg","default.jpg"]
    
    let cellClass = "SlideCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createViews()
        
        self.setupConstraints()
        
        // getData()
    }
    
    private func createViews(){
        
        self.view.backgroundColor = .red
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.scrollDirection = .horizontal
        
        self.collection = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        self.collection.delegate = self
        self.collection.dataSource = self
        
        self.collection.register(SlideCell.self, forCellWithReuseIdentifier: cellClass)
        self.collection.backgroundColor = .white
        self.collection.isPagingEnabled = true
        
        self.view.addSubview(collection)
        
        collection.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.collection.frame.width, height: self.collection.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
//    public func fillViews(data: [ItemDTO]?){
//        self.collection.reloadData()
//    }
    
    func setupConstraints() {
        
        self.collection.autoPinEdge(.top, to: .top, of: self.view, withOffset: 0.0)
        self.collection.autoPinEdge(.left, to: .left, of: self.view, withOffset: 0.0)
        self.collection.autoPinEdge(.right, to: .right, of: self.view, withOffset: 0.0)
        self.collection.autoPinEdge(.bottom, to: .bottom, of: self.view, withOffset: 0.0)
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return items?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:SlideCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SlideCell", for: indexPath) as! SlideCell
        //guard let url = items?[indexPath.row] else { return  }
        //... optional
        cell.setup(imgUrl: items![indexPath.row], contentMode:self.setup?.imageAspect)
        
        return cell
    }
    
}


