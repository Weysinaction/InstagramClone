//
//  RecTableViewCell.swift
//  InstagramClone
//
//  Created by Владислав Лазарев on 21.07.2021.
//

import UIKit

class RecTableViewCell: UITableViewCell {

    //MARK: IBOutlet
    @IBOutlet private var imageOne: UIImageView!
    @IBOutlet private var imageTwo: UIImageView!
    @IBOutlet private var imageThree: UIImageView!
    @IBOutlet private var imageFour: UIImageView!
    @IBOutlet private var imageFive: UIImageView!
    @IBOutlet private var imageSix: UIImageView!
    @IBOutlet private var scrollView: UIScrollView!
    
    //MARK: UITableViewCell's methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupScrollView()
        setupImageViews()
    }
    
    //MARK: private methods
    private func setupScrollView() {
        scrollView.contentSize = CGSize(width: 1043, height: 250)
    }
    
    private func setupImageViews() {
        imageOne.layer.cornerRadius = imageOne.frame.width / 2
        imageTwo.layer.cornerRadius = imageTwo.frame.width / 2
        imageThree.layer.cornerRadius = imageThree.frame.width / 2
        imageFour.layer.cornerRadius = imageFour.frame.width / 2
        imageFive.layer.cornerRadius = imageFive.frame.width / 2
        imageSix.layer.cornerRadius = imageSix.frame.width / 2
        
    }
}
