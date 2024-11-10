//
//  MenuItems.swift
//  LittleLemon'sdiners
//
//  Created by Prateek Saini on 09/11/24.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    var title: String
    var ingredients: [Ingredient]
    var price: Double
    var category: MenuCategory
}
