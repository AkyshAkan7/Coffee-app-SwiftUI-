//
//  DrinkRowView.swift
//  Coffee app(SwiftUI)
//
//  Created by Akan Akysh on 3/21/20.
//  Copyright © 2020 Akysh Akan. All rights reserved.
//

import SwiftUI

struct DrinkRowView: View {
    
    var categoryName: String
    var drinks: [Drink]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
                .font(.title)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach (self.drinks, id: \.name) {
                        drink in
                        
                        NavigationLink(destination: DrinkDetailView(drink: drink)) {
                            DrinkItemView(drink: drink)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
    }
}

struct DrinkRowView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRowView(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
