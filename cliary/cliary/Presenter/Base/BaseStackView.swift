//
//  BaseStackView.swift
//  cliary
//
//  Created by Jinyoung Yoo on 6/30/24.
//

import UIKit

class BaseStackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {}
}
