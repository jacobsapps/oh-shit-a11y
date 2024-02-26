//
//  LoginButtonView.swift
//  OhShitA11y
//
//  Created by Jacob Bartlett on 26/02/2024.
//

import SwiftUI

struct LoginButtonView: View {
    
    @Binding var isLoggedIn: Bool
    let text: String
    
    var body: some View {
        Button(action: {
            isLoggedIn.toggle()
            
        }, label: {
            Text(text)
                .font(.title3)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Capsule().foregroundColor(.yellow))
        })
    }
}

#Preview {
    LoginButtonView(isLoggedIn: .constant(false),
                    text: "Log in")
}
