//
//  SceneDelegate.swift
//  LifeCycleApp
//
//  Created by Maxim Makarov on 29.01.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // Вызываеся, когда новая сцена добавляется в приложение
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        UIView.appearance().tintColor = .white
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.backgroundColor = .systemGray
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        print(#function)
    }
    
    // Вызывается перед переходом сцены в активное состояние
    func sceneWillEnterForeground(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается, когда сцена становится активной
    func sceneDidBecomeActive(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается перед переходом приложения в фоновый режим
    func sceneWillResignActive(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается после перехода приложения в фоновый режим
    func  sceneDidEnterBackground(_ scene: UIScene) {
        print(#function)
    }

//    func sceneDidDisconnect(_ scene: UIScene) {
//    }

}

