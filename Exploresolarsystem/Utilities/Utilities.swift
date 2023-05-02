//
//  Utilities.swift
//  Exploresolarsystem

import Foundation
import SwiftUI

class Utilities {
    public static func showAlertMessage(title: String, message: String, isCancel: Bool = false) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert
            .addAction(UIAlertAction(title: isCancel ? "Cancel" : "Ok",
                                     style: isCancel ? .cancel : .default) { _ in })
        showAlert(alert: alert)
    }

    static func showAlert(alert: UIAlertController) {
        if let controller = topMostViewController() {
            controller.present(alert, animated: true)
        }
    }

    private static func keyWindow() -> UIWindow? {
        return UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .compactMap { $0 as? UIWindowScene }
            .first?.windows.filter { $0.isKeyWindow }.first
    }

    private static func topMostViewController() -> UIViewController? {
        guard let rootController = keyWindow()?.rootViewController else {
            return nil
        }
        return topMostViewController(for: rootController)
    }

    private static func topMostViewController(for controller: UIViewController)
        -> UIViewController
    {
        if let presentedController = controller.presentedViewController {
            return topMostViewController(for: presentedController)
        } else if let navigationController = controller as? UINavigationController {
            guard let topController = navigationController.topViewController else {
                return navigationController
            }
            return topMostViewController(for: topController)
        } else if let tabController = controller as? UITabBarController {
            guard let topController = tabController.selectedViewController else {
                return tabController
            }
            return topMostViewController(for: topController)
        }
        return controller
    }
}
