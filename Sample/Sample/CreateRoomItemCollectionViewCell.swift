//
//  CreateRoomItemCollectionViewCell.swift
//  Sample
//
//  Created by Ye Ko Ko Htet on 22/10/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class CreateRoomItemCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CreateRoomItemCollectionViewCell"
    
    @IBOutlet weak var outerView: UIView!
    @IBOutlet weak var innerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        outerView.layer.cornerRadius = outerView.frame.height / 2
        innerView.layer.cornerRadius = innerView.frame.height / 2
    }

}
