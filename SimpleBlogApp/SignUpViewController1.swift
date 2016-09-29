//
//  SignUpViewController1.swift
//  SimpleBlogApp
//
//  Created by ThinkDWM on 9/30/16.
//  Copyright © 2016 ThinkDWM. All rights reserved.
//

import Foundation
import UIKit


class SignUpViewController1: UIViewController {
    
    @IBOutlet var firstnameTextField: UITextField!
    @IBOutlet var middlenameTextField: UITextField!
    @IBOutlet var lastnameTextField: UITextField!
    @IBOutlet var nextButton: UIButton!
    
}


extension SignUpViewController1 {
        
    internal func segueToSignUpViewController2(sender: AnyObject) {
        self.performSegue(withIdentifier: "toSignUpViewController2", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Sign Up"
        
        self.nextButton.layer.cornerRadius = 7.0
        
        self.nextButton.addTarget(self, action: #selector(self.segueToSignUpViewController2(sender:)), for: .touchUpInside)
        
    }
    
}
