//
//  BaseTableViewCell.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/17/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

protocol BaseTableViewCell {
    static var cellIdentifier: String { get }
    static var nib: UINib? { get }
}

extension BaseTableViewCell where Self: UITableViewCell {
    
    static var cellIdentifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib? {
        return UINib(nibName: Self.cellIdentifier, bundle: nil)
    }
    
}
