//
//  CategoriesSection.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 19/02/2024.
//

import UIKit

class CategoriesSection: SectionsLayout {
    typealias ItemsType = CategoriesModel
    
    var items: [CategoriesModel] = []
    
    var isSelectedIndex: Int?
    
    func numberOfItems() -> Int {
        items.count
    }
    
    func sectionLayout(
        _ collectionView: UICollectionView,
        layoutEnvironment: NSCollectionLayoutEnvironment
    ) -> NSCollectionLayoutSection {
        // Item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // Group
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(58), heightDimension: .absolute(58))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let header = createHeader()

        // Section
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = 39
        section.contentInsets = .init(top: 0, leading: 20, bottom: 20, trailing: 20)
        section.orthogonalScrollingBehavior = .groupPaging
        section.boundarySupplementaryItems = [header]
        return section
    }
    
    private func createHeader() -> NSCollectionLayoutBoundarySupplementaryItem {
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                heightDimension: .estimated(50))
        let header = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: HeaderReusableView.elementKind,
            alignment: .top
        )
        
        header.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        return header
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell: CategoriesCollectionViewCell = collectionView.dequeue(indexPath: indexPath) else {
            return UICollectionViewCell()
        }
        cell.setup(category: items[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        isSelectedIndex = indexPath.item
        collectionView.reloadData()
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        at indexPath: IndexPath
    ) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: HeaderReusableView.identifier,
            for: indexPath
        ) as? HeaderReusableView else {
            return UICollectionReusableView()
        }
        header.setupHeaderTitle(title: "Categories")
        header.setupHeaderButton(buttonTitle: "All", image: .right)
        return header
    }
    
    func registerCell(in collectionView: UICollectionView) {
        collectionView.registerNib(CategoriesCollectionViewCell.self)
    }
    
    func registerSupplementaryView(in collectionView: UICollectionView) {
        collectionView.register(HeaderReusableView.self,
                                forSupplementaryViewOfKind: HeaderReusableView.elementKind,
                                withReuseIdentifier: HeaderReusableView.identifier)
    }
    
    func registerDecorationView(layout: UICollectionViewLayout) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        
    }
}
