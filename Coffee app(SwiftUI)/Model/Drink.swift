//
//  Drink.swift
//  Coffee app(SwiftUI)
//
//  Created by Akan Akysh on 3/20/20.
//  Copyright © 2020 Akysh Akan. All rights reserved.
//

import SwiftUI

struct Drink: Codable, Hashable, Identifiable {
    
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}

