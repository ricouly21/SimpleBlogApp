//
//  LoginViewController.swift
//  SimpleBlogApp
//
//  Created by ThinkDWM on 9/30/16.
//  Copyright © 2016 ThinkDWM. All rights reserved.
//

import Foundation
import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import IQKeyboardManagerSwift


class LoginViewController: UIViewController {
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var signUpButton: UIButton!
    
    @IBOutlet var facebookLoginButton: FBSDKLoginButton!
    
}

// **************
// ** FACEBOOK **
// **************
extension LoginViewController: FBSDKLoginButtonDelegate {
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print(error)
        print(result)
    }
    
    func loginButtonWillLogin(_ loginButton: FBSDKLoginButton!) -> Bool {
        return true
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) { }
    
    
    internal func fbAuth(sender: FBSDKLoginButton) {
        let manager: FBSDKLoginManager = FBSDKLoginManager()
        manager.logIn(withReadPermissions: ["email", "public_profile"], from: self) { (result, error) in
            print(error)
            print(result)
            print(result?.token.tokenString)
        }
    }
    
    internal func setUpfacebookLoginButton() {
        
//        self.facebookLoginButton.addTarget(self, action: #selector(self.fbAuth(sender:)), for: .touchUpInside)
    }
    
}



extension LoginViewController {
    
    internal func segueToSignUpViewController1(sender: AnyObject) {
        self.performSegue(withIdentifier: "toSignUpViewController1", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Login"
        
        self.facebookLoginButton.readPermissions = ["email", "public_profile"]
        self.facebookLoginButton.delegate = self
        
        self.loginButton.layer.cornerRadius = 7.0
        self.signUpButton.layer.cornerRadius = 7.0
        
        self.signUpButton.addTarget(self, action: #selector(self.segueToSignUpViewController1(sender:)), for: .touchUpInside)
        
        self.setUpfacebookLoginButton()
        
    }
    
}
