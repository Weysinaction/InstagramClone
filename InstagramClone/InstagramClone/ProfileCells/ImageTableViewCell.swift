//
//  ImageTableViewCell.swift
//  InstagramClone
//
//  Created by Владислав Лазарев on 23.07.2021.
//

import UIKit

final class ImageTableViewCell: UITableViewCell {

    //MARK: IBOutlet
    @IBOutlet private weak var storyCollectionView: UICollectionView!
    
    //MARK: private properties
    private let cellID = "imageCell"
    
    //MARK: UITableViewCell
    override func awakeFromNib() {
        super.awakeFromNib()
        storyCollectionView.dataSource = self
        storyCollectionView.delegate = self
    }
}

//MARK: - UICollectionViewDataSource
extension ImageTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
                as? ImageCollectionViewCell else { return UICollectionViewCell() }
        
        return imageCell
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension ImageTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 130, height: 130)
    }
}

