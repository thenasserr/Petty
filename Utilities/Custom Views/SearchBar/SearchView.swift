//
//  SearchView.swift
//  EcoMarket
//
//  Created by Ibrahim Nasser Ibrahim on 22/01/2024.
//

import UIKit
@IBDesignable
class SearchView: UIView {

    // MARK: IBOutlet
    //
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchImage: UIImageView!
    
    // MARK: Init
    //
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
        applyStyling()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
        applyStyling()
    }
    
    // MARK: - UI Configurations
    //
    private func applyStyling() {
        /// TextField UI
        searchTextField.placeholder = L10n.Home.searchplaceholder
        searchTextField.borderStyle = .none
        
        ///  SearchImage UI
        searchImage.tintColor = .black
        searchImage.image = .search
        
        /// View UI
        layer.cornerRadius = frame.height / 2
        backgroundColor = .pSearchBackground
    }
}

private extension SearchView {
    /// Loads the view from a nib file and adds it as a subview to the OnboardingTextField view.
    private func loadNib() {
        // swiftlint:disable all
        if let loadedViews = Bundle.main.loadNibNamed(String(describing: Self.self), owner: self, options: nil),
            let view = loadedViews.first as? UIView {
            addSubview(view)
            view.frame = bounds
        }
        // swiftlint:enable all
    }
}
