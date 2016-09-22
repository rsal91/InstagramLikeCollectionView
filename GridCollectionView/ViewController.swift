//
//  ViewController.swift
//  GridCollectionView
//
//  Created by Roman Salazar on 9/22/16.
//  Copyright © 2016 Roman Salazar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customFlowLayout = CustomFlowLayout()
        let cgRect = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        let collectionView = UICollectionView(frame: cgRect, collectionViewLayout: customFlowLayout)
        collectionView.backgroundColor = UIColor.red
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        view.addSubview(collectionView)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 90
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
        cell.backgroundColor = UIColor.white
        return cell
    }
    
    
}

