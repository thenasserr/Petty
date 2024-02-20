//
//  FashionCollectionViewCell.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 20/02/2024.
//

import UIKit

class FashionCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var containerView: UIStackView!
    @IBOutlet weak var loveButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var bottomView: UIStackView!
    @IBOutlet weak var topView: UIStackView!
    @IBOutlet weak var petImage: UIImageView!
    
    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }
    
    // MARK: - Public Methods
        
        /// Sets up the cell with fashion model data.
        ///
        /// - Parameter fashion: The fashion model object containing data for the cell.
    func setup(fashion: FashionModel) {
        petImage.image = UIImage(named: fashion.image)
        priceLabel.text = fashion.price
        descriptionLabel.text = fashion.description
        topView.backgroundColor = UIColor(hexString: fashion.topColor, alpha: 1)
    }
    
    // MARK: - Private Methods
    private func configureUI() {
        layer.cornerRadius = 15
        
        loveButton.setTitle("", for: .normal)
        loveButton.setImage(.heart1, for: .normal)
        
        configureStackViewsUI()
        configureLabelsUI()
    }
    
    private func configureStackViewsUI() {
        topView.roundCorners(corners: [.topLeft, .topRight], radius: 15)
        bottomView.isLayoutMarginsRelativeArrangement = true
        bottomView.layoutMargins = .init(top: 10, left: 10, bottom: 10, right: 10)
        bottomView.backgroundColor = .white
    }
    
    private func configureLabelsUI() {
        priceLabel.font = .medium
        priceLabel.textColor = .pPrimaryText
        descriptionLabel.font = .regular
        descriptionLabel.textColor = .pPrimaryText
    }
    
    @IBAction func loveButtonTapped(_ sender: Any) {
        print("Added To favourites")
        loveButton.setImage(.heart, for: .normal)
    }
}
