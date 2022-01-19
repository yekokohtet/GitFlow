//
//  LoginViewController.swift
//  Sample
//
//  Created by THEIN PYAE PHYO on 2022/01/18.
//  Copyright © 2022 THEIN PYAE PHYO. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var viewInput: UIView!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    static let identifier = "LoginViewController"
   
    override func viewDidLoad() {
        super.viewDidLoad()

        viewInput.layer.cornerRadius = 3
                      
        btnLogin.addTarget(self, action: #selector(onTapLogin), for: .allTouchEvents)
        
    }
    
    @objc func onTapLogin() {
        
      //  if !((tfEmail.text?.isEmpty) ?? false) && !((tfPassword.text?.isEmpty) ?? false) {
        if tfEmail.text == "user@gmail.com" && tfPassword.text == "1234" {
                   let storyboard = UIStoryboard(name: "Main", bundle: nil)
                   let vc = storyboard.instantiateViewController(identifier: WelcomeViewController.identifier) as WelcomeViewController
                   vc.modalPresentationStyle = .fullScreen
            tfEmail.text = ""
            tfPassword.text = ""
            
            self.present(vc, animated: true, completion: nil)
               
        }
        
    }

}
