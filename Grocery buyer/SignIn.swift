//
//  SignIn.swift
//  Grocery buyer
//
//  Created by joshua on 12/13/23.
//

import SwiftUI

struct SignIn: View {
    @Binding var push: Bool
    @State var password: String = ""
    
    var body: some View {
        VStack {
            
            Image("amazon.logo")
            
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
            
            Image("user")
                .resizable()
                .frame(width: 80, height: 80)
            
            Text("Welcome back Joshua")
            
            SecureField("Password", text: $password)
                .frame(width: 200, height: 10)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 40, trailing: 20))
            
                .cornerRadius(10)
            
            ZStack {
               
                Button(action: {
                    withAnimation(.easeOut(duration: 0.3)) {
                        self.push.toggle()
                    }
                }) {
                    Text("Shop")
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 50))
                        .background(Color("AmazonYellow"))
                        .cornerRadius(10)
                    
            
                }.buttonStyle(PlainButtonStyle())
            }
            .edgesIgnoringSafeArea(.all)
            
        }
    }
    
}
