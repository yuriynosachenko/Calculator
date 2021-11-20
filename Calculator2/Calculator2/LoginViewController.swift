//
//  LoginViewController.swift
//  Calculator2
//
//  Created by Yurik Nosachenko on 14.10.2021.
//

import UIKit

class LoginViewController: UIViewController {
    private let userNameTest = "test"
    private let userPasswTest = "123"
    
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBAction func goButtonAction(_ sender: UIButton) {
        let userName = userNameTF.text
        let password = passwordTF.text
        
        guard let inputUserName = userName, let inputPassword = password, !inputUserName.isEmpty, !inputPassword.isEmpty else {return}
        
        if inputUserName == userNameTest && inputPassword == userPasswTest{
            performSegue(withIdentifier: "ShowCalculateViewController", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // view.backgroundColor = .brown
        buttonOutlet.layer.cornerRadius = 10.0
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
