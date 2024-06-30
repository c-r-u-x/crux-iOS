//
//  BaseView.swift
//  cliary
//
//  Created by Jinyoung Yoo on 6/30/24.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
        self.configureHierarchy()
        self.configureLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {} // ex) self.backgroundColor = .black
    func configureHierarchy() {} // addSubview
    func configureLayout() {} // SnapKit makeConstraint
}
