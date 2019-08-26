//
//  LoginViewController.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var containerEmail: UIView!
    @IBOutlet weak var containerPassword: UIView!
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBOutlet weak var btLogin: UIButton!
    
    
    @IBAction func btLoginTapped(_ sender: Any) {
        if let email = tfEmail.text{
            UserData.shared.user?.email = email
        }
        
        if let pass = tfPassword.text{
            UserData.shared.user?.password = pass
        }
        
        let view = ModuleBuilder.shared.createHomeTabBar()
        DispatchQueue.main.async {
            self.present(view, animated: true, completion: nil)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification : NSNotification) {
        if let userInfo = notification.userInfo, let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue{
            DispatchQueue.main.async {
                self.scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardFrame.height, right: 0)
            }
        }
    }
    
    @objc func keyboardWillHide(_ notification : NSNotification) {
        DispatchQueue.main.async {
            self.scrollView.contentInset = UIEdgeInsets.zero
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        scrollView.keyboardDismissMode = .onDrag
        
        containerEmail.layer.borderColor = UIColor.black.cgColor
        containerEmail.layer.borderWidth = 1
        
        containerPassword.layer.borderColor = UIColor.black.cgColor
        containerPassword.layer.borderWidth = 1
        
        btLogin.layer.borderWidth = 1
        btLogin.layer.borderColor = UIColor.black.cgColor
        btLogin.layer.shadowColor = UIColor.black.cgColor
        btLogin.layer.shadowOpacity = 0.2
        btLogin.layer.shadowRadius = 8
    }
}
