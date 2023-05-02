//
//  ExploresolarsystemApp.swift
//  Exploresolarsystem

import SwiftUI

@main
struct ExploresolarsystemApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
