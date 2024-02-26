//
//  OhShitA11yApp.swift
//  OhShitA11y
//
//  Created by Jacob Bartlett on 25/02/2024.
//

import SwiftUI

@main
struct OhShitA11yApp: App {
    
    @State private var isLoggedIn: Bool = true
    
    var body: some Scene {
        WindowGroup {
            CatsView(isLoggedIn: $isLoggedIn)
                .fullScreenCover(isPresented: $isLoggedIn) {
                    OnboardingView(isLoggedIn: $isLoggedIn)
                }
        }
    }
}
