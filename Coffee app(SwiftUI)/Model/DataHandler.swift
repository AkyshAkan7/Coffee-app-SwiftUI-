//
//  Data.swift
//  Coffee app(SwiftUI)
//
//  Created by Akan Akysh on 3/20/20.
//  Copyright © 2020 Akysh Akan. All rights reserved.
//

import Foundation

let drinkData: [Drink] = load("drinks.json")

func load<T: Decodable>(_ fileName: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.path(forResource: "drinks", ofType: "json")
        else {
            fatalError("Could not find \(fileName) in main bundle")
    }
    
    let url = URL(fileURLWithPath: file)
    
    do {
        data = try Data(contentsOf: url)
    } catch {
        fatalError("Could not load \(fileName) from main bundle:\n\(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(fileName) as \(T.self):\n\(error)")
    }
    
}
