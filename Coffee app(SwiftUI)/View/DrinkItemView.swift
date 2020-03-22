//
//  DrinkItem.swift
//  Coffee app(SwiftUI)
//
//  Created by Akan Akysh on 3/20/20.
//  Copyright © 2020 Akysh Akan. All rights reserved.
//

import SwiftUI

struct DrinkItemView: View {
    
    var drink: Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(drink.name)
                    .font(.headline)
                    .foregroundColor(.primary)
            
                Text(drink.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
            
        }
    }
}

struct DrinkItemView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItemView(drink: drinkData[0])
    }
}
