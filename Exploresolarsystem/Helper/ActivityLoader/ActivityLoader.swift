//
//  ActivityLoader.swift
//  Exploresolarsystem

import SwiftUI

struct ActivityLoader: View {
    @Binding var isLoaderShow: Bool
    var body: some View {
        if isLoaderShow {
            ZStack {
                ProgressView {}
                    .frame(width: UIScreen.main.bounds.width / 3.5,
                           height: UIScreen.main.bounds.height / 3.5)
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                    alignment: .center)
                .background(Color.black.opacity(0.25).edgesIgnoringSafeArea(.all))
        }
    }
}
