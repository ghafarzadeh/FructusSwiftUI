//
//  OnboardingView.swift
//  FructusSwiftUI
//
//  Created by Habib Ghaffarzadeh on 2.05.2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewDevice("iPhone 11 Pro")
    }
}
