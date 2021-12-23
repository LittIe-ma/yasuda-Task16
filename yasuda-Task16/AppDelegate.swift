//
//  AppDelegate.swift
//  yasuda-Task16
//
//  Created by yasudamasato on 2021/12/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    Router.shared.showRoot(window: UIWindow(frame: UIScreen.main.bounds))
    return true
  }
}
