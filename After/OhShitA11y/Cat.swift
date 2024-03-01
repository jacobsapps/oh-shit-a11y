//
//  Cat.swift
//  OhShitA11y
//
//  Created by Jacob Bartlett on 26/02/2024.
//

import Foundation

struct Cat {
    
    let name: String
    let quote: String
    let age: Int
    let image: String
    let imageDescription: String
    let icon: String
    
    static func sample() -> [Cat] {
        [
            Cat(name: "Rosie", 
                quote: "The alpha tiger",
                age: 4, 
                image: "rosie",
                imageDescription: "Rosie exposing his cat belly",
                icon: "dumbbell"),
            Cat(name: "Cody",
                quote: "The silly one",
                age: 4, 
                image: "cody",
                imageDescription: "Cody lying on my laptop",
                icon: "cat.fill"),
            Cat(name: "Luna",
                quote: "The baby girl",
                age: 3, 
                image: "luna",
                imageDescription: "Luna blepping her tongue out",
                icon: "heart.circle.fill"),
        ]
    }
}
