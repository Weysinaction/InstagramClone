//
//  ViewController.swift
//  InstagramClone
//
//  Created by Владислав Лазарев on 20.07.2021.
//

import UIKit

final class ViewController: UIViewController {

    //MARK: IBOutlet
    @IBOutlet private var storiesTableView: UITableView!
    
    //MARK: private properties
    private let storiesID = "StoriesCell"
    private let postID = "PostCell"
    private let recID = "RecCell"
    private let refresh = UIRefreshControl()
    
    //MARK: View Controller's method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController()
        setupRefresh()
    }

    //MARK: private methods
    private func setupViewController() {
        storiesTableView.register(UINib(nibName: "StoriesTableViewCell", bundle: nil), forCellReuseIdentifier: storiesID)
        storiesTableView.register(UINib(nibName: "RecTableViewCell", bundle: nil), forCellReuseIdentifier: recID)
        storiesTableView.register(UINib(nibName: "PostTableViewCell", bundle: nil), forCellReuseIdentifier: postID)
    }
    
    private func setupRefresh() {
        refresh.addTarget(self, action: #selector(refreshTableView), for: .valueChanged)
        refresh.tintColor = .white
        storiesTableView.addSubview(refresh)
    }
    
    @objc private func refreshTableView() {
        refresh.endRefreshing()
    }
}

//MARK: UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = storiesTableView.dequeueReusableCell(withIdentifier: storiesID, for: indexPath) as? StoriesTableViewCell else { return UITableViewCell() }
            
            return cell
        case 2:
            guard let cell = storiesTableView.dequeueReusableCell(withIdentifier: recID, for: indexPath) as? RecTableViewCell else { return UITableViewCell() }
            
            return cell
        default:
            guard let cell = storiesTableView.dequeueReusableCell(withIdentifier: postID, for: indexPath) as? PostTableViewCell else { return UITableViewCell() }
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 100
        case 2:
            return 250
        default:
            return 500
        }
    }
}
