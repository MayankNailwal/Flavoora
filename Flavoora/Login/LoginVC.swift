//
//  LoginVC.swift
//  Flavoora
//
//  Created by Mayank Nailwal on 10/01/26.
//

import UIKit

class LoginVC: UIViewController {
    
    var userEmail: String = ""

    @IBAction func emailTextFieldAction(_ sender: UITextField) {
        userEmail = sender.text ?? ""
        
        if isValidEmail(userEmail) {
            sender.layer.borderColor = UIColor.green.cgColor
        } else {
            sender.layer.borderColor = UIColor.red.cgColor
        }
    }
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var emailTexfield: UITextField!
    @IBOutlet weak var carouselCollectionView: UICollectionView!
    @IBOutlet weak var screenView: UIView!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var loginView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.setupDelegates()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        self.loginView.layer.cornerRadius = 12
        self.loginView.clipsToBounds = true
        self.loginView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.loginView.backgroundColor = UIColor(named: "loginViewColor")
        self.nextButton.layer.cornerRadius = 10
        self.nextButton.clipsToBounds = true
        self.nextButton.tintColor = .white
        self.nextButton.backgroundColor = UIColor(named: "nextButtonColor")
        self.emailTexfield.layer.cornerRadius = 10
        self.emailTexfield.layer.borderWidth = 1
        self.emailTexfield.clipsToBounds = true
        self.emailTexfield.backgroundColor = UIColor(named: "nextButtonColor")
        self.emailTexfield.placeholder = "Enter Email"
        let padding = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        self.emailTexfield.leftView = padding
        self.emailTexfield.leftViewMode = .always
        self.emailTexfield.layer.borderColor = UIColor(named: "borderColor")?.cgColor
    }
    
    func setupDelegates() {
        self.emailTexfield.delegate = self
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex =
        "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let predicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: email)
    }
  

}

extension LoginVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
}
