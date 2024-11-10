import SwiftUI

struct MenuItemsView: View {
    @State private var showOptions = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                // Header for "Menu"
                Text("Menu")
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal)

                // Scrollable content
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        // Sample categories
                        CategorySection(title: "Food", items: Array(1...12).map { "Food \($0)" })
                        CategorySection(title: "Drink", items: Array(1...8).map { "Drink \($0)" })
                        CategorySection(title: "Dessert", items: Array(1...4).map { "Dessert \($0)" })
                    }
                    .padding(.horizontal)
                }
            }
            .navigationBarItems(trailing: Button(action: {
                showOptions = true
            }) {
                Image(systemName: "slider.horizontal.3")
                    .font(.title2)
            })
            .sheet(isPresented: $showOptions) {
                MenuItemsOptionView()
            }
        }
    }
}

struct CategorySection: View {
    let title: String
    let items: [String]

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3), spacing: 10) {
                ForEach(items, id: \.self) { item in
                    NavigationLink(destination: MenuItemDetailsView(
                        itemName: item,
                        itemImageName: "Little Lemon logo",
                        itemPrice: 10.99,
                        itemOrders: 1000,
                        itemIngredients: ["Spinach", "Broccoli", "Carrot", "Pasta"]
                    )) {
                        Rectangle()
                            .fill(Color.black)
                            .frame(height: 100)
                            .cornerRadius(8)
                            .overlay(
                                Text(item)
                                    .foregroundColor(.white)
                                    .font(.headline)
                            )
                    }
                }
            }
        }
        .padding(.bottom)
    }
}


struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
