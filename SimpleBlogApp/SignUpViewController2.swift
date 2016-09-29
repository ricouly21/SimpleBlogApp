//
//  SignUpViewController2.swift
//  SimpleBlogApp
//
//  Created by ThinkDWM on 9/30/16.
//  Copyright © 2016 ThinkDWM. All rights reserved.
//

import Foundation
import UIKit


class SignUpViewController2: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var password1TextField: UITextField!
    @IBOutlet var password2TextField: UITextField!
    @IBOutlet var nextButton: UIButton!
    
}


extension SignUpViewController2 {
    
    @IBAction func nextButtonAction(sender: AnyObject) {
        let alert = UIAlertController(title: "Success", message: "You are now registered!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (alert) in
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Sign Up"
        
        self.nextButton.layer.cornerRadius = 7.0
        
        self.nextButton.addTarget(self, action: #selector(self.nextButtonAction(sender:)), for: .touchUpInside)
        
    }
    
}
