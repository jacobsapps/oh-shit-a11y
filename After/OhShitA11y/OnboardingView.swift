//
//  OnboardingView.swift
//  OhShitA11y
//
//  Created by Jacob Bartlett on 25/02/2024.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Join Jacob's Cat Kingdom today")
                    .fontWeight(.semibold)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Image("catKingdom")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                
                OnboardingReasonsText()
                
                Spacer()
                
                LoginButtonView(isLoggedIn: $isLoggedIn,
                                text: "Log in")
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
            .padding(.horizontal)
            .navigationTitle("Create account")
        }
    }
}

struct OnboardingReasonsText: View {
    
    let onboardingReasons: [String] = [
        "• pictures of my cats",
        "• occasional cat facts",
        "• (once I work out how) cat gifs"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("As a member of Jacob's Cat Kingdom you'll get membership rewards such as...")
                .font(.body)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
            
            ForEach(onboardingReasons, id: \.self) {
                Text($0)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }

            Text("Join today!!")
                .font(.body)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    OnboardingView(isLoggedIn: .constant(false))
}
