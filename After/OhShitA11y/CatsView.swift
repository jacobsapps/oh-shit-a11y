//
//  CatsView.swift
//  OhShitA11y
//
//  Created by Jacob Bartlett on 25/02/2024.
//

import A11yUtils
import SwiftUI

struct CatsView: View {
    
    @Binding var isLoggedIn: Bool
    let cats: [Cat] = Cat.sample()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: .zero) {
                List(cats, id: \.name) {
                    CatView(cat: $0)
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                }
                .listStyle(PlainListStyle())
                
                LoginButtonView(isLoggedIn: $isLoggedIn,
                                text: "Log out")
                .padding()
            }
            .navigationTitle("Cats")
        }
    }
}

struct CatView: View {
    
    @ScaledMetric(relativeTo: .largeTitle) private var imageSize: CGFloat = 72
    @ScaledMetric(relativeTo: .body) private var iconSize: CGFloat = 24
    let cat: Cat
    
    var body: some View {
        A11yHStack {
            Image(cat.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageSize, height: imageSize)
                .clipShape(Circle())
                .accessibilityLabel(Text(cat.imageDescription))
            
            VStack {
                A11yHStack {
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
                        .frame(width: iconSize, height: iconSize)
                    
                    Text(cat.quote)
                        .font(.body)
                        .italic()
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .accessibilityElement(children: .combine)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 12)
    }
}

#Preview {
    CatsView(isLoggedIn: .constant(false))
}
