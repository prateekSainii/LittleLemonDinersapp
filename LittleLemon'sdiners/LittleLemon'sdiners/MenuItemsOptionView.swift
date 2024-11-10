import SwiftUI

enum MenuCategory: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum SortOption: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case alphabetically = "A-Z"
}

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        Text(category.rawValue)
                    }
                }
                
                Section(header: Text("SORT BY")) {
                    ForEach(SortOption.allCases, id: \.self) { option in
                        Text(option.rawValue)
                    }
                }
            }
            .navigationTitle("Filter")
            .navigationBarItems(trailing: Button("Done") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}
