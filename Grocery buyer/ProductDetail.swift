
//https://stackoverflow.com/questions/58200555/swiftui-add-clearbutton-to-textfield
import SwiftUI
import RealityKit
import RealityKitContent


struct ProductDetail: View {
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
   //THIS WILL BE IMMERSIVE VIEW
    
    var body: some View {
        

        RealityView { content in
            
            
            
            
            if let scene = try? await Entity(named: "Detail", in:
                realityKitContentBundle) {
                content.add(scene)
            }
        } 
       
        
    }

}



#Preview {
    ProductDetail()
 
}

