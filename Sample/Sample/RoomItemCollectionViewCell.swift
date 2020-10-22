//
//  RoomItemCollectionViewCell.swift
//  Sample
//
//  Created by Ye Ko Ko Htet on 22/10/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class RoomItemCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "RoomItemCollectionViewCell"

    @IBOutlet weak var ivProfileImage: UIImageView!
    @IBOutlet weak var outterView: UIView!
    @IBOutlet weak var innerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ivProfileImage.layer.cornerRadius = ivProfileImage.frame.width / 2
        outterView.layer.cornerRadius = outterView.frame.width / 2
        innerView.layer.cornerRadius = innerView.frame.width / 2
    }

}
