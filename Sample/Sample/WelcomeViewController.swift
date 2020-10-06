//
//  WelcomeViewController.swift
//  Sample
//
//  Created by Ye Ko Ko Htet on 15/09/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    static let identifier = "WelcomeViewController"
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var lblWelcome: UILabel!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = username {
            lblWelcome.text = "\(name) Welcome"
        }

        btnBack.addTarget(self, action: #selector(onTapBack), for: .allTouchEvents)
    }
    
    @objc func onTapBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
