//
//  AlbumViewController.swift
//  AlodokterTest
//
//  Created by Yosua Hoo on 26/08/19.
//  Copyright © 2019 Yosua Hoo. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "AlbumTableCell"
    
    var albums : [Album]?
    
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
        self.albums = AlbumData.shared.albums
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func setupView(){
        setupTableView()
        setupNavBar()
    }

    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    func setupNavBar(){
        self.navigationItem.title = "My Apps"
    }
    
    func pushToPhotos(album: Album) {
        let view = ModuleBuilder.shared.createPhotos(album: album)
        view.hidesBottomBarWhenPushed = true
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(view, animated: true)
        }
    }
}

extension AlbumViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let album = albums?[indexPath.row] {
            pushToPhotos(album: album)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! AlbumTableCell
        if let coverImage = albums?[indexPath.row].coverImage{
            cell.configureCell(coverImage: coverImage)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 4
    }
    
}
