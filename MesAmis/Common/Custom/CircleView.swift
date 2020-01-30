//
//  CircleView.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/30/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

@IBDesignable
class CircleView: UIView {
    
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.setupView()
    }
    
    // MARK: - Methods
    private func setupView() {
        let width = self.frame.width
        
        self.layer.cornerRadius = width / 2
    }
    
}
