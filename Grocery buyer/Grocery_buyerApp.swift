//
//  Grocery_buyerApp.swift
//  Grocery buyer
//
//  Created by joshua on 12/11/23.
//

import SwiftUI

@main
struct Grocery_buyerApp: App {
    @State var product = false
    var body: some Scene {
        WindowGroup {
            test()
        }

        ImmersiveSpace(id: "detail") {
            ProductDetail()
        }
        WindowGroup(id: "store") {
            CardView(product: $product)
        }
    }
}
