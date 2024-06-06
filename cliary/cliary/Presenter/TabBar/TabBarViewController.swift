//
//  TabBarViewController.swift
//  cliary
//
//  Created by 권은빈 on 2024.06.06.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabBarViewController()
    }
    
    // TODO: - Design should be adopted.
    private func configureTabBarViewController() {
        self.view.backgroundColor = .white
        self.tabBar.backgroundColor = .systemBackground
        self.viewControllers = [
            navigationController(of: Tab.daily),
            navigationController(of: Tab.camera),
            navigationController(of: Tab.profile),
        ]
    }
    
    private func navigationController(of tab: Tab) -> UINavigationController {
        let navigationController = NavigationController(rootViewController: tab.viewController)
        
        navigationController.tabBarItem.title = tab.title
        navigationController.tabBarItem.image = tab.icon
        navigationController.tabBarItem.selectedImage = tab.selectedIcon
        navigationController.navigationBar.isHidden = tab == .camera
        
        return navigationController
    }
}

extension TabBarViewController {
    enum Tab {
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
                UIViewController().then { $0.view.backgroundColor = .blue }
            }
        }
        
        var title: String {
            switch self {
            case .daily:
                "기록"
            case .camera:
                "촬영"
            case .profile:
                "프로필"
            }
        }
        
        // TODO: - Replace with the designed icon
        var icon: UIImage? {
            switch self {
            case .daily:
                UIImage(systemName: "calendar")
            case .camera:
                UIImage(systemName: "camera")
            case .profile:
                UIImage(systemName: "person")
            }
        }
        
        // TODO: - Replace with the designed icon
        var selectedIcon: UIImage? {
            switch self {
            case .daily:
                UIImage(systemName: "calendar")
            case .camera:
                UIImage(systemName: "camera.fill")
            case .profile:
                UIImage(systemName: "person.fill")
            }
        }
    }
}
