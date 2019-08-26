//
//  ProfileViewController.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var ivAvatar: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbGender: UILabel!
    @IBOutlet weak var lbPhone: UILabel!
    
    var user : User?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        fetchData()
    }
    
    func fetchData(){
        self.user = UserData.shared.user
        if let user = user {
            populateDate(user: user)
        }
    }
    
    func populateDate(user: User){
        self.ivAvatar.image = user.coverImage
        self.lbName.text = user.name ?? ""
        self.lbGender.text = user.gender ?? ""
        self.lbPhone.text = user.phone ?? ""
    }
    
    func setupView(){
        self.ivAvatar.layer.cornerRadius = self.ivAvatar.frame.width / 2
        setupNavBar()
    }
    
    func setupNavBar(){
        self.navigationItem.title = "My Apps"
    }
}
