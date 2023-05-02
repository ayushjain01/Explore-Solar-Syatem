//
//  UINavigationControllerExtension.swift
//  Exploresolarsystem
//

import Foundation
import UIKit

// Provide Default Swipe left gesture for back navigation to all screen.
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
