//
//  NavigationController.swift
//  cliary
//
//  Created by 권은빈 on 2024.06.06.
//

import UIKit

import Then

class NavigationController: UINavigationController {
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented in TabBarViewController")
    }
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureNavigationController()
    }
    
    
    // TODO: - Edit the background color match to the design.
    private func configureNavigationController() {
        self.navigationBar.standardAppearance = self.navigationBar.standardAppearance.then {
            $0.shadowColor = .clear
            $0.backgroundEffect = .none
            $0.backgroundColor = .systemBackground
        }
    }

}
