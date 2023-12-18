
//https://stackoverflow.com/questions/58200555/swiftui-add-clearbutton-to-textfield
import SwiftUI
import RealityKit
import RealityKitContent


struct ProductDetail: View {
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    @Environment(\.dismissWindow) private var dismissWindow
   //THIS WILL BE IMMERSIVE VIEW
    
    var body: some View {
        RealityView { content in
            
            if let scene = try? await Entity(named: "Detail", in:
                realityKitContentBundle) {
                content.add(scene)
            }
        }
        .gesture(TapGesture().targetedToAnyEntity().onEnded { value in
                    let timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { timer in
                        
                        var transform = value.entity.transform
                        let radians = 90.0 * Float.pi / 90.0
                        transform.rotation *= simd_quatf(angle: radians, axis: SIMD3<Float>(0,1,0))
                        
                        value.entity.move(
                            to: transform,
                            relativeTo: nil,
                            duration: 3,
                            timingFunction: .linear
                        )
                        
                        
                    }
                    timer.fire()
                })
        .onAppear {
                    dismissWindow(id: "store")
                }
        
    }

}



#Preview {
    ProductDetail()
 
}

