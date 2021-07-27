//
//  LikeViewController.swift
//  InstagramClone
//
//  Created by Владислав Лазарев on 20.07.2021.
//

import UIKit

final class LikeViewController: UITableViewController {

    //MARK: IBOutlet
    @IBOutlet private var followButton: UIButton!
    
    //MARK: private properties
    let refresh = UIRefreshControl()
    
    //MARK: UITableViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController()
        setupFollowButton()
        setupRefresh()
    }
    
    //MARK: private methods
    private func setupViewController() {
        view.backgroundColor = .black
    }
    private func setupFollowButton() {
        followButton.layer.borderWidth = 1
        followButton.layer.borderColor = UIColor.systemGray.cgColor
    }
    
    private func setupRefresh() {
        refresh.addTarget(self, action: #selector(refreshTableView), for: .valueChanged)
        refresh.tintColor = .white
        self.tableView.addSubview(refresh)
    }
    
    @objc func refreshTableView() {
        refresh.endRefreshing()
    }
}
