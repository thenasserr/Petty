//
//  ViewController.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 20/02/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var sections: [any SectionsLayout] = []

    // MARK: - View Lifecycle
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        configuerUI()
        let headerSection = FeaturesSection()
        headerSection.items = FeaturesModel.mockData
        
        let categorySection = CategoriesSection()
        categorySection.items = CategoriesModel.mockData
        
        let section1 = MultiSection()
        section1.items = MultiModel.mockData1
        
        sections = [headerSection, categorySection, section1]
        configureCollectionView()
        collectionView.reloadData()
    }
    
    private func configuerUI() {
        logoImage.image = .logo
        view.backgroundColor = .pMainTheme
        setupButtonsUI()
    }
    
    // MARK: - UI Configuration
    
    /// Configures the collection view with necessary settings and registers cell classes.
    private func configureCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        sections.forEach { section in
            section.registerCell(in: self.collectionView)
            section.registerSupplementaryView(in: self.collectionView)
        }
        collectionView.backgroundColor = .pMainTheme
        collectionView.collectionViewLayout = createCompositionalLayout()
    }
    
    /// Configure buttons UI
    private func setupButtonsUI() {
        filterButton.setTitle("", for: .normal)
        filterButton.setImage(.filter, for: .normal)
    }
    
    // MARK: - Compositional Layout
    //
    /// Creates a compositional layout for the collection view.
    /// - Returns: A UICollectionViewCompositionalLayout object.
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionIndex, layoutEnvironment) in
            self.sections[sectionIndex].sectionLayout(self.collectionView, layoutEnvironment: layoutEnvironment)
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    // MARK: - UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections[section].numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        sections[indexPath.section].collectionView(collectionView, cellForItemAt: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        sections[indexPath.section].collectionView(collectionView, viewForSupplementaryElementOfKind: kind, at: indexPath)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        sections[indexPath.section].collectionView(collectionView, didHighlightItemAt: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        sections[indexPath.section].collectionView(collectionView, didUnhighlightItemAt: indexPath)
    }
}
