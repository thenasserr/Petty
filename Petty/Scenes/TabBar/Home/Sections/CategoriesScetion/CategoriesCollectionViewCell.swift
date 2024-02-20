//
//  CategoriesCollectionViewCell.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 19/02/2024.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var image: UIImageView!
    
    // MARK: - Public Methods
        
    /// Sets up the cell with the provided category information.
    func setup(category: CategoriesModel) {
        image.image = UIImage(named: category.image)
        setupUI()
    }
    
    private func setupUI() {
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
    }

}
