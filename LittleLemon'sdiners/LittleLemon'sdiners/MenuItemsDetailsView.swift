//
//  MenuItemsDetailsView.swift
//  LittleLemon'sdiners
//
//  Created by Prateek Saini on 21/10/24.
//

import SwiftUI

import SwiftUI

struct MenuItemDetailsView: View {
    let itemName: String
    let itemImageName: String
    let itemPrice: Double
    let itemOrders: Int
    let itemIngredients: [String]

    var body: some View {
        VStack(spacing: 16) {
            Text(itemName)
                .font(.largeTitle)
                .bold()

            Image("Little Lemon logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200) 


            Text("Price: \(String(format: "$%.2f", itemPrice))")
                .font(.title2)
            
            Text("Ordered: \(itemOrders)")

            Text("Ingredients:")
                .font(.title2)
                .bold()
            
            ForEach(itemIngredients, id: \.self) { ingredient in
                Text(ingredient)
            }

            Spacer()
        }
        .padding()
        .navigationTitle(itemName)
    }
}
