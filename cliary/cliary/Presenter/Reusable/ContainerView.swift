//
//  ContainerView.swift
//  cliary
//
//  Created by Jinyoung Yoo on 6/30/24.
//

import Foundation

class ContainerView: BaseView {
    override func configure() {
        self.backgroundColor = .customGray
        self.layer.cornerRadius = 15
        self.clipsToBounds = true
    }
}
