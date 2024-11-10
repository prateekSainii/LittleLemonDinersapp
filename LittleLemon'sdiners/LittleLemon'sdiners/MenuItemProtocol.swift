//
//  MenuItemProtocol.swift
//  LittleLemon'sdiners
//
//  Created by Prateek Saini on 09/11/24.
//

import Foundation


protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var price: Double { get }
    var category: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}

extension MenuItem: MenuItemProtocol {
    var ordersCount: Int {
        get { 0 } // Replace with actual logic
        set { /* Update logic here */ }
    }
}
