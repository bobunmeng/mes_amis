//
//  CircleImageView.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/30/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImageView: UIView {
    
    private var imageView: UIImageView = UIImageView()
    
    @IBInspectable
    var image: UIImage? = nil {
        didSet {
            self.imageView.image = self.image
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.setupView()
    }
    
    
    // MARK: - Methods
    private func setupView() {
        let width = self.frame.width
        
        self.layer.cornerRadius = width / 2
        self.contentMode = .scaleAspectFit
        self.backgroundColor = .blue
        
        self.addSubview(imageView)
        self.setupConstraints()
    }
    
    private func setupConstraints() {
        self.imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let imgConstraints = [
            NSLayoutConstraint(item: self.imageView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 20),
            NSLayoutConstraint(item: self.imageView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: -20),
            NSLayoutConstraint(item: self.imageView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 20),
            NSLayoutConstraint(item: self.imageView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: -20)
        ]
        
        self.addConstraints(imgConstraints)
    }
    
}
