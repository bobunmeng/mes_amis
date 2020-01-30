//
//  FriendCategoryTableViewCell.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/16/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

class FriendCategoryTableViewCell: UITableViewCell, BaseTableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(_ data: FriendCategory) {
//        self.catTitleLabel?.text = data.title
        let icon = data.iconColor == nil ? data.icon : data.icon?.withTintColor(data.iconColor!)
//        self.catIconImgView?.image = icon
        self.textLabel?.text = data.title
        self.imageView?.image = icon
    }
    
}
