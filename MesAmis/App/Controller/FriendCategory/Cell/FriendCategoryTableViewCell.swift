//
//  FriendCategoryTableViewCell.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/16/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

class FriendCategoryTableViewCell: UITableViewCell, BaseTableViewCell {
    
    @IBOutlet weak var catIconImgView: UIImageView?
    @IBOutlet weak var catTitleLabel: UILabel?
    @IBOutlet weak var cardView: UIView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
    }
    
    func configure(_ data: FriendCategory) {
        self.catIconImgView?.image = data.icon
        self.catTitleLabel?.text = data.title
        self.cardView?.backgroundColor = data.color
    }
    
}
