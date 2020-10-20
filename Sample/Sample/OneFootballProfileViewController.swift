//
//  OneFootballProfileViewController.swift
//  Sample
//
//  Created by Ye Ko Ko Htet on 20/10/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class OneFootballProfileViewController: UIViewController {
    
    static let identifier = "OneFootballProfileViewController"

    @IBOutlet weak var ivManU: UIImageView!
    @IBOutlet weak var ivEngland: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ivManU.layer.cornerRadius = ivManU.frame.width / 2
        ivEngland.layer.cornerRadius = ivEngland.frame.width / 2
    }
    
}
