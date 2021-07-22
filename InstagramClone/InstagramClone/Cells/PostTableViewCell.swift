//
//  PostTableViewCell.swift
//  InstagramClone
//
//  Created by Владислав Лазарев on 21.07.2021.
//

import UIKit

final class PostTableViewCell: UITableViewCell {

    //MARK: IBOutlet
    @IBOutlet private var mainProfileImageView: UIImageView!
    @IBOutlet private var commentProfileImageView: UIImageView!
    
    //MARK: UITableViewCell's methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupImageViews()
    }

    //MARK: private methods
    private func setupImageViews() {
        mainProfileImageView.layer.cornerRadius = mainProfileImageView.frame.width / 2
        commentProfileImageView.layer.cornerRadius = commentProfileImageView.frame.width / 2
    }
}
