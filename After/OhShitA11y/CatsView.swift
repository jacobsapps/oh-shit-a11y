//
//  CatsView.swift
//  OhShitA11y
//
//  Created by Jacob Bartlett on 25/02/2024.
//

import SwiftUI

struct CatsView: View {
    
    @Binding var isLoggedIn: Bool
    let cats: [Cat] = Cat.sample()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: .zero) {
                List(cats) {
                    CatView(cat: $0)
                        .listRowSeparator(.hidden)
                }
                .listStyle(PlainListStyle())
                
                LoginButtonView(isLoggedIn: $isLoggedIn,
                                text: "Log out")
            }
            .navigationTitle("Cats")
        }
    }
}

struct CatView: View {
    
    let cat: Cat
    
    var body: some View {
        HStack {
            Image(cat.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 72, height: 72)
                .clipShape(Circle())
            
            VStack {
                HStack {
                    Text(cat.name)
                        .font(.title)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("\(cat.age) years old")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                HStack {
                    Image(systemName: cat.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(.secondary)
                        .frame(width: 24, height: 24)
                    
                    Text(cat.quote)
                        .font(.body)
                        .italic()
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .padding()
        .listRowBackground(Color.clear)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 12)
    }
}

#Preview {
    CatsView(isLoggedIn: .constant(false))
}
