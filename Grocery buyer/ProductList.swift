

import SwiftUI
import WrappingHStack
import ResponsiveTextField

struct ProductList: View {
    
    @State private var searchTerm: String = ""
    var body: some View {
        
        //https://stackoverflow.com/questions/63888804/emulating-css-flex-wrap-behavior-with-swiftui
      
        WrappingHStack {
            Image("ama")
                .resizable()
                .frame(width:180, height: 32)
            
            
            ResponsiveTextField(
                
                     placeholder: "Search Amazon",
                     text: $searchTerm
                 )
            
            .background(Color(.white))
            .frame(height: 40)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                            .cornerRadius(5)
                            .background(Color(.white))
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(lineWidth: 1.0)
                                   
                )
            
                Text("Shop")
            .buttonStyle(PlainButtonStyle())
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(Color(.white))
            .cornerRadius(10)
 
        }
        .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 30))
        .background(Color("Nav"))
      
        
        

    }
    
   
}

#Preview {
    ProductList()
}
