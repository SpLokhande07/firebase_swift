//
//  Utilities.swift
//  firebase_auth
//
//  Created by Saiprasad Lokhande on 22/12/23.
//

import Foundation
import UIKit

final class Utilities {
    static let shared = Utilities()
    
    private init(){}

    @MainActor
     func topViewController(controller: UIViewController? = nil) -> UIViewController? {
        let controller = controller ?? UIApplication.shared.keyWindow?.rootViewController
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        return controller
     }
}
