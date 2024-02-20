//
//  MultiCollectionViewCell.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 19/02/2024.
//

import UIKit

class ServiceCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var topStackView: UIStackView!
    @IBOutlet weak var containerView: UIStackView!
    @IBOutlet weak var bottomView: UIStackView!
    @IBOutlet weak var starImage: UIImageView!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - Initialization
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Public Methods
        
    /// Configures the cell with the provided MultiModel.
    ///
    /// - Parameter multi: The MultiModel object containing data to populate the cell.
    func setup(multi: ServiceModel) {
        topStackView.backgroundColor = UIColor(hexString: multi.background, alpha: 1)
        imageView.image = UIImage(named: multi.image)
        titleLabel.text = multi.title
        subtitleLabel.text = multi.subtitle
    }
    
    // MARK: - Private Methods
    private func setupUI() {
        starImage.image = .star
        layer.cornerRadius = 15
        configureLabelsUI()
        configureStackViewsUI()
    }
    
    private func configureLabelsUI() {
        titleLabel.textColor = .pPrimaryText
        titleLabel.font = .medium
        
        subtitleLabel.textColor = .pPrimaryText
        subtitleLabel.font = .h3
    }
    
    private func configureStackViewsUI() {
        containerView.layer.cornerRadius = 15
        bottomView.isLayoutMarginsRelativeArrangement = true
        bottomView.layoutMargins = .init(top: 0, left: 10, bottom: 10, right: 10)
        bottomView.backgroundColor = .white
    }
}
