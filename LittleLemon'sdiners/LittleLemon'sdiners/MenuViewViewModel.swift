//
//  MenuViewViewModel.swift
//  LittleLemon'sdiners
//
//  Created by Prateek Saini on 09/11/24.
//

import Foundation


class MenuViewViewModel: ObservableObject {
    @Published var menuItems: [MenuItem] = []

    init() {
        let foodItems = (1...12).map { MenuItem(title: "Food \($0)", ingredients: [.spinach, .carrot], price: 9.99, category: .food) }
        let drinkItems = (1...8).map { MenuItem(title: "Drink \($0)", ingredients: [.broccoli, .pasta], price: 4.99, category: .drink) }
        let dessertItems = (1...4).map { MenuItem(title: "Dessert \($0)", ingredients: [.tomatoSauce, .spinach], price: 5.99, category: .dessert) }
        
        menuItems = foodItems + drinkItems + dessertItems
    }
}

