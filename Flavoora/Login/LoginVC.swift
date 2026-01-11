//
//  LoginVC.swift
//  Flavoora
//
//  Created by Mayank Nailwal on 10/01/26.
//

import UIKit

class LoginVC: UIViewController {

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
        self.emailTexfield.backgroundColor = UIColor(named: "nextButtonColor")
        self.emailTexfield.placeholder = "Enter Email"
    }
    
    func setupDelegates() {
        
        
    }

}
