import SwiftUI
import WrappingHStack
import ResponsiveTextField


struct CenterAViewTest: View {
    
    
    let columns = [
        GridItem(.adaptive(minimum: 160), alignment: .center)
    ]
    
    
    var body: some View {
        
        ScrollView {
         
                WrappingHStack {
                    Spacer()
                    VStack {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    VStack {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                    
                    VStack {
                        Text("Hello, World!")
                    }
                    
                    VStack {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                    
                    VStack {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                  
                }
            
                
            
               
                    
        }
    }
}

#Preview {
    CenterAViewTest()
}
