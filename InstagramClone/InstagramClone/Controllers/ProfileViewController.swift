//
//  ProfileViewController.swift
//  InstagramClone
//
//  Created by Владислав Лазарев on 20.07.2021.
//

import UIKit

final class ProfileViewController: UITableViewController {

    //MARK: IBOutlet
    @IBOutlet var buttonSend: UIButton!
    
    //MARK: private properties
    private let refresh = UIRefreshControl()
    
    //MARK: ProfileViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtonSend()
        setupRefresh()
    }
    
    //MARK: private methods
    private func setupButtonSend() {
        buttonSend.layer.borderWidth = 1
        buttonSend.layer.borderColor = UIColor.systemGray.cgColor
    }
    
    private func setupRefresh() {
        refresh.tintColor = .white
        refresh.addTarget(self, action: #selector(refreshTable), for: .valueChanged)
        self.tableView.addSubview(refresh)
    }
    
    @objc private func refreshTable() {
        refresh.endRefreshing()
    }
}
