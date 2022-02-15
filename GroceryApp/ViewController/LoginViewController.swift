//
//  ViewController.swift
//  GroceryApp
//
//  Created by Sait Cihaner on 15.02.2022.
//

import UIKit


class LoginViewController: UIViewController {

    @IBOutlet weak var lblForgotPassword: UILabel!
    @IBOutlet weak var imgHidePasword: UIImageView!
    @IBOutlet weak var lblRegister: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtMail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapForForgotPassword = UITapGestureRecognizer.init(target: self, action: #selector(self.tapGestureUse(_:)))
        let tapForHidePassword = UITapGestureRecognizer.init(target: self, action: #selector(self.tapGestureUse(_:)))
        let tapForRegister = UITapGestureRecognizer.init(target: self, action: #selector(self.tapGestureUse(_:)))
        lblForgotPassword.tag = 0
        imgHidePasword.tag = 1
        lblRegister.tag = 2
        lblRegister.addGestureRecognizer(tapForRegister)
        lblForgotPassword.addGestureRecognizer(tapForForgotPassword)
        imgHidePasword.addGestureRecognizer(tapForHidePassword)
        
        
       
        
    }

    @IBAction func clkLoginButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func tapGestureUse(_ sender : UITapGestureRecognizer){
        print(sender.view!.tag)
        switch sender.view?.tag{
        case 0:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
            self.navigationController?.pushViewController(vc, animated: true)
        break
        case 1:
            self.txtPassword.isSecureTextEntry = false
            break
        case 2:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
            self.navigationController?.pushViewController(vc, animated: true)
            break
        default:
            break
        }
    }
}

