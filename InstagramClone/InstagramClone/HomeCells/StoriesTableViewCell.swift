//
//  StoriesTableViewCell.swift
//  InstagramClone
//
//  Created by Владислав Лазарев on 21.07.2021.
//

import UIKit

final class StoriesTableViewCell: UITableViewCell {

    //MARK: IBOutlet
    @IBOutlet private var scrollView: UIScrollView!
    @IBOutlet private var imageOne: UIImageView!
    @IBOutlet private var imageTwo: UIImageView!
    @IBOutlet private var imageThree: UIImageView!
    @IBOutlet private var imageFour: UIImageView!
    @IBOutlet private var imageFive: UIImageView!
    @IBOutlet private var imageSix: UIImageView!
    @IBOutlet private var imageSeven: UIImageView!
    
    //MARK: UITableViewCell's methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupScrollView()
        setupImages()
    }
    
    //MARK: private methods
    private func setupScrollView() {
        scrollView.contentSize = CGSize(width: 750, height: 100)
    }
    private func setupImages() {
        imageOne.layer.cornerRadius = imageOne.frame.width / 2
        imageOne.layer.borderWidth = 4
        imageOne.layer.borderColor = UIColor.systemOrange.cgColor
        
        imageTwo.layer.cornerRadius = imageTwo.frame.width / 2
        imageTwo.layer.borderWidth = 4
        imageTwo.layer.borderColor = UIColor.systemOrange.cgColor
        
        imageThree.layer.cornerRadius = imageThree.frame.width / 2
        imageThree.layer.borderWidth = 4
        imageThree.layer.borderColor = UIColor.systemOrange.cgColor
        
        imageFour.layer.cornerRadius = imageFour.frame.width / 2
        imageFour.layer.borderWidth = 4
        imageFour.layer.borderColor = UIColor.systemOrange.cgColor
        
        imageFive.layer.cornerRadius = imageFive.frame.width / 2
        imageFive.layer.borderWidth = 4
        imageFive.layer.borderColor = UIColor.systemOrange.cgColor
        
        imageSix.layer.cornerRadius = imageSix.frame.width / 2
        imageSix.layer.borderWidth = 4
        imageSix.layer.borderColor = UIColor.systemOrange.cgColor
        
        imageSeven.layer.cornerRadius = imageSeven.frame.width / 2
        imageSeven.layer.borderWidth = 4
        imageSeven.layer.borderColor = UIColor.systemOrange.cgColor
    }
    
}
