//
//  FructusSwiftUIApp.swift
//  FructusSwiftUI
//
//  Created by Habib Ghaffarzadeh on 26.04.2023.
//

import SwiftUI

@main
struct FructusSwiftUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
