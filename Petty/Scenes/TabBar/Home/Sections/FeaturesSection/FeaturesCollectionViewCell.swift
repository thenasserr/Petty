//
//  HeaderCollectionViewCell.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 19/02/2024.
//

import UIKit

class FeaturesCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var petImage: UIImageView!
    @IBOutlet weak var offerSubtitleLabel: UILabel!
    @IBOutlet weak var offerDate: UILabel!
    @IBOutlet weak var offerLabel: UILabel!
    @IBOutlet weak var headerImage: UIImageView!
    
    // MARK: - Public Methods
    func setup(header: FeaturesModel) {
        petImage.image = UIImage(named: header.petImage)
        offerLabel.text = header.offerTitle
        offerSubtitleLabel.text = header.offerSubtitle
        offerDate.text = header.offerDate

        setupUI()
    }
    
    // MARK: - Private Methods
    private func setupUI() {
        headerImage.image = .feat
        headerImage.clipsToBounds = true
        headerImage.contentMode = .scaleAspectFill
        layer.cornerRadius = 10
        clipsToBounds = true
        setupLabelsUI()
    }
    
    private func setupLabelsUI() {
        offerLabel.textColor = .pDiscount
        offerLabel.font = .medium
        
        offerDate.textColor = .pData
        offerDate.font = .regular
        
        offerSubtitleLabel.textColor = .pPrimaryText
        offerSubtitleLabel.font = .regular
    }
}
