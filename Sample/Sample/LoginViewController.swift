//
//  LoginViewController.swift
//  Sample
//
//  Created by Ye Ko Ko Htet on 15/09/2020.
//  Copyright © 2020 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    static let identifier = "LoginViewController"

    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var viewInput: UIView!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewInput.layer.cornerRadius = 3
        
        btnLogin.addTarget(self, action: #selector(onTapLogin), for: .allTouchEvents)
    }

    @objc func onTapLogin() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: WelcomeViewController.identifier) as WelcomeViewController
        vc.modalPresentationStyle = .fullScreen
        vc.username = "\(tfEmail.text ?? "")"
        self.present(vc, animated: true, completion: nil)
        
    }

}
