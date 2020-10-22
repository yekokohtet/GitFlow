//
//  HomeViewController.swift
//  Sample
//
//  Created by Ye Ko Ko Htet on 22/10/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    static let identifier = "HomeViewController"

    @IBOutlet weak var collectionViewRoomItemList: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. register
        collectionViewRoomItemList.register(UINib(nibName: RoomItemCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: RoomItemCollectionViewCell.identifier)
        
        collectionViewRoomItemList.contentInset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        
        // 2. datasource
        collectionViewRoomItemList.dataSource = self
        
        // 3. delegate
        collectionViewRoomItemList.delegate = self
    }
    
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RoomItemCollectionViewCell.identifier, for: indexPath) as! RoomItemCollectionViewCell
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    // sizeforItemAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 53, height: 61)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // navigate to Image View Details View Controller
    }
}
