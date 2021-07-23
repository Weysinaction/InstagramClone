//
//  TableViewCell.swift
//  InstagramClone
//
//  Created by Владислав Лазарев on 23.07.2021.
//

import UIKit

final class TableViewCell: UITableViewCell {
    
    //MARK: IBOutlet
    @IBOutlet private weak var storyCollectionView: UICollectionView!
    
    //MARK: private properties
    private let cellID = "cellOne"
    
    //MARK: UITableViewCell
    override func awakeFromNib() {
        super.awakeFromNib()
        
        storyCollectionView.dataSource = self
        storyCollectionView.delegate = self
    }
}

//MARK: - UICollectionViewDataSource

extension TableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
                as? CollectionViewCell else { return UICollectionViewCell() }
        
        return imageCell
        
    }
}

//MARK: - UICollectionViewDelegateFlowLayout

extension TableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 100, height: 130)
    }
}
