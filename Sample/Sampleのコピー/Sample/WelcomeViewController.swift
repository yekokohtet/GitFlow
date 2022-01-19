//
//  WelcomeViewController.swift
//  Sample
//
//  Created by THEIN PYAE PHYO on 2022/01/18.
//  Copyright © 2022 THEIN PYAE PHYO. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    static let identifier = "WelcomeViewController"
    
    @IBOutlet weak var btnBack: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        btnBack.addTarget(self, action: #selector(onTapBack), for: .allTouchEvents)
        
    }
    
    @objc func onTapBack() {
        
                self.dismiss(animated: true, completion: nil)
    }

}
