//
//  ContentView.swift
//  Coffee app(SwiftUI)
//
//  Created by Akan Akysh on 3/20/20.
//  Copyright © 2020 Akysh Akan. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Drink]] {
        .init(
            grouping: drinkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List(categories.keys.sorted(), id: \.self) { key in
                DrinkRowView(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationBarTitle(Text("Coffee DB"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
