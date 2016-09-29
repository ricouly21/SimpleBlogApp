//
//  LoginViewController.swift
//  SimpleBlogApp
//
//  Created by ThinkDWM on 9/30/16.
//  Copyright © 2016 ThinkDWM. All rights reserved.
//

import Foundation
import UIKit
import IQKeyboardManagerSwift


extension UIViewController {
    
    public func activateKeyboardManager(enabled: Bool) {
        IQKeyboardManager.sharedManager().shouldToolbarUsesTextFieldTintColor = true
        IQKeyboardManager.sharedManager().shouldShowTextFieldPlaceholder = false
        IQKeyboardManager.sharedManager().enable = enabled
    }
    
}

class LoginViewController: UIViewController {
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var signUpButton: UIButton!
    
}



extension LoginViewController {
    
    internal func segueToSignUpViewController1(sender: AnyObject) {
        self.performSegue(withIdentifier: "toSignUpViewController1", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Login"
        
        self.loginButton.layer.cornerRadius = 7.0
        self.signUpButton.layer.cornerRadius = 7.0
        
        self.signUpButton.addTarget(self, action: #selector(self.segueToSignUpViewController1(sender:)), for: .touchUpInside)
        
//        self.activateKeyboardManager(enabled: true)
        
    }
    
}
