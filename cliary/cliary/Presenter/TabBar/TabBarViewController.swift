//
//  TabBarViewController.swift
//  cliary
//
//  Created by 권은빈 on 2024.06.06.
//

import UIKit
import Then

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabBarViewController()
        configureAppearence()
    }
    
    // TODO: - Design should be adopted.
    private func configureTabBarViewController() {
        self.viewControllers = Tab.allCases.map {
            let tab = $0
            let (title, icon, selectedIcon) = tab.itemResource
            
            return NavigationController(rootViewController: tab.viewController).then {
                $0.tabBarItem = UITabBarItem(title: title, image: icon, selectedImage: selectedIcon)
                $0.navigationBar.isHidden = tab == .camera
            }
        }
    }
    
    private func configureAppearence() {
        let appearence = UITabBarAppearance()
        
        appearence.configureWithOpaqueBackground()
        appearence.shadowColor = .lightGray
        appearence.backgroundColor = .customBlack
        self.tabBar.standardAppearance = appearence
        self.tabBar.scrollEdgeAppearance = appearence
        self.tabBar.tintColor = .customPrimary
        self.tabBar.unselectedItemTintColor = .customGray
    }
}

extension TabBarViewController {
    enum Tab: CaseIterable {
        case daily
        case camera
        case profile
        
        // TODO: - Return the matched UIViewController after define those VCs.
        var viewController: UIViewController {
            switch self {
            case .daily:
                UIViewController().then { $0.view.backgroundColor = .red }
            case .camera:
                UIViewController().then { $0.view.backgroundColor = .green }
            case .profile:
                ProfileViewController(contentView: ProfileRootView())
            }
        }
        
        var itemResource: (title: String, icon: UIImage?, selectedIcon: UIImage?) {
            switch self {
            case .daily:
                return (title: "기록", icon: UIImage(systemName: "calendar"), selectedIcon: UIImage(systemName: "calendar"))
            case .camera:
                return (title: "촬영", icon: UIImage(systemName:"camera"), selectedIcon: UIImage(systemName:"camera.fill"))
            case .profile:
                return (title: "프로필", icon: UIImage(systemName: "person"), selectedIcon: UIImage(systemName: "person.fill"))
            }
        }
    }
}
