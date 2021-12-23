//
//  File.swift
//  yasuda-Task16
//
//  Created by yasudamasato on 2021/12/22.
//

import UIKit

final class Router {

  static let shared = Router()
  private init() {}

  private var window: UIWindow?

  func showRoot(window: UIWindow) {
    guard let vc = UIStoryboard.init(name: "ItemList", bundle: nil).instantiateInitialViewController() as? ItemListViewController else {
      return
    }
    let nav = UINavigationController(rootViewController: vc)
    window.rootViewController = nav
    window.makeKeyAndVisible()
    self.window = window
  }
}

private extension Router {
  func show(from: UIViewController, next: UIViewController, animated: Bool = true) {
    if let nav = from.navigationController {
      nav.pushViewController(next, animated: animated)
    } else {
      from.present(next, animated: animated, completion: nil)
    }
  }
}
