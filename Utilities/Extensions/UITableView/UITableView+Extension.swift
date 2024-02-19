//
//  UITableView+Extension.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 19/02/2024.
//

import UIKit

extension UITableViewCell: Identifiable { }

extension UITableView {
    func registerFromNib(_ cell: UITableViewCell.Type) {
        register(UINib(nibName: cell.identifier, bundle: nil),
                 forCellReuseIdentifier: cell.identifier)
    }
    
    func dequeue<Cell: UITableViewCell>(indexPath: IndexPath) -> Cell? {
        dequeueReusableCell(withIdentifier: Cell.identifier, for: indexPath) as? Cell
    }
}
