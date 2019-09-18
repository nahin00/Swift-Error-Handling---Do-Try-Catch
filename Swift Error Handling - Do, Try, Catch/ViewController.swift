//
//  ViewController.swift
//  Swift Error Handling - Do, Try, Catch
//
//  Created by Nahin Ahmed on 18.09.19.
//  Copyright © 2019 NAhmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    enum LoginError: Error {
        case incompleteForm
        case invalidEmail
        case incorrectPasswordLength
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginBtnTapped(_ sender: UIButton) {
        
        do {
            try login()
        } catch LoginError.incompleteForm {
            Alert.showBasic(title: "Incomplete form", message: "Please fill out both the email and password fields", vc: self)
        } catch LoginError.invalidEmail {
            Alert.showBasic(title: "Invalid Email", message: "Please enter a valid email", vc: self)
        } catch LoginError.incorrectPasswordLength {
            Alert.showBasic(title: "Incorrect Password Length", message: "Password must be 8 characters long", vc: self)
        } catch {
            Alert.showBasic(title: "Eroor", message: "Unknown Error", vc: self)
        }
    }
    
    func login() throws {
        
        guard let email = emailTF.text, let password = passwordTF.text else {
            return
        }
        
        if email.isEmpty || password.isEmpty {
            throw LoginError.incompleteForm
        }
        
        if !email.isValidEmail {
            throw LoginError.invalidEmail
        }
        
        if password.count < 8 {
            throw LoginError.incorrectPasswordLength
        }
    }
}
