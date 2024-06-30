//
//  BaseViewController.swift
//  cliary
//
//  Created by Jinyoung Yoo on 6/30/24.
//

import UIKit
import Then
class BaseViewController<ContentView: UIView>: UIViewController {
    
    let contentView: ContentView
    
    init(contentView: ContentView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureNavigationBar()
        self.view.backgroundColor = .customBlack
    }
}

extension BaseViewController {
    private func configureNavigationBar() {
        guard let rootView = self.contentView as? RootViewProtocol else {
            print("RootViewProtocol을 채택하지 않은 View가 들어옴")
            return
        }
        
        let appearence = UINavigationBarAppearance()
        
        appearence.titleTextAttributes = [.foregroundColor: UIColor.white,  .font: UIFont.systemFont(ofSize: 19, weight: .heavy)]
        appearence.configureWithTransparentBackground()
        self.navigationController?.navigationBar.standardAppearance = appearence
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearence
        self.navigationItem.title = rootView.navigationTitle
    }
}
