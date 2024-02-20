//
//  SceneDelegate.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 19/02/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let viewModel = HomeViewModel()
        let viewController = HomeViewController(viewModel: viewModel)
        window.rootViewController = viewController
        self.window = window
        window.makeKeyAndVisible()
    }
}
