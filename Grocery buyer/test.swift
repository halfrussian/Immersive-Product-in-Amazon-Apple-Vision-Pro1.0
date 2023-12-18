//
//  test.swift
//  Grocery buyer
//
//  Created by joshua on 12/13/23.
//


import SwiftUI
import WrappingHStack
import ResponsiveTextField

struct test: View {
    
    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
 
    
    
    @State var push = false
    @State var product = false
    
    var body: some View {
        VStack {
            if !push {
                
                SignIn(push: $push)
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
            }
            
            if push && !product {
                VStack{
                    Nav(push: $push)
                    CardView(product: $product)
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
                }
                .background(Color(.white))
            } else {
                if product {
                    ProductDetail()
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
                }
            }
        }
    }
}


#Preview {
    test()
}
