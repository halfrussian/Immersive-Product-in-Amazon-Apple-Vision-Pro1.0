//
//  Grocery_buyerApp.swift
//  Grocery buyer
//
//  Created by joshua on 12/11/23.
//

import SwiftUI

@main
struct Grocery_buyerApp: App {
    var body: some Scene {
        WindowGroup {
            test()
        }
//        WindowGroup {
//            ProductList()
//        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
