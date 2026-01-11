//
//  LoginVC.swift
//  Flavoora
//
//  Created by Mayank Nailwal on 10/01/26.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var carouselCollectionView: UICollectionView!
    @IBOutlet weak var screenView: UIView!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var loginView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        self.loginView.layer.cornerRadius = 12
        self.loginView.clipsToBounds = true
        self.loginView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.loginView.backgroundColor = UIColor(named: "loginViewColor")
    }

}
