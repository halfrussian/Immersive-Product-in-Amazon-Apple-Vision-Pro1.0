//
//  CardView.swift
//  Grocery buyer
//
//  Created by joshua on 12/12/23.
//

import SwiftUI
import WrappingHStack
import ResponsiveTextField

struct CardView: View {
    @Binding var product: Bool
    let columns = [
        GridItem(.adaptive(minimum: 160), alignment: .leading)
    ]
   
   
    
    var body: some View {
        
        //        WrappingHStack {
        //            Text("placeholder")
        //        }
        //        .background(Color("Nav"))
        //        .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 30))
        //
        
        ScrollView {
            VStack {
                
                
                ZStack {
                    LazyVGrid(columns: columns, alignment: .leading, spacing: 30) {
                        
                        //CARD ONE
                        VStack {
                            HStack{
                                Image("frost")
                                    .resizable()
                                    .frame(width:150, height: 200)
                                    .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                            }
                            .background(Color("cardbg"))
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 10,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 10
                                )
                            )
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                            VStack(alignment: .leading) {
                                Text("Frosted Flakes: Sugar Cereal | Apart of a Balanced Breakfast")
                                    .font(.system(size: 15))
                                Text("3.75 Ounce (Pack 1)")
                                    .font(.system(size: 12))
                                    .background(Color("cardbg"))
                                WrappingHStack {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color("AmazonYellow"))
                                        .font(.system(size: 12))
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color("AmazonYellow"))
                                        .font(.system(size: 12))
                                    Image(systemName: "star.fill")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("AmazonYellow"))
                                    Image(systemName: "star.fill")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("AmazonYellow"))
                                    Image(systemName: "star.fill")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("AmazonYellow"))
                                    Image(systemName: "chevron.down")
                                        .font(.system(size: 10))
                                        .foregroundColor(Color("Nav"))
                                    Text("3,200")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("Nav"))
                                }
                                Text("20k+ bought inpast month")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color(.gray))
                                HStack {
                                    Text("$")
                                        .font(.system(size: 12))
                                        .padding(EdgeInsets(top: -5, leading: 0, bottom: 0, trailing: -9))
                                    Text("6")
                                        .font(.system(size: 20))
                                    Text("97")
                                        .font(.system(size: 12))
                                        .padding(EdgeInsets(top: -7, leading: -8, bottom: 0, trailing: 0))
                                    Text("($.10/Ounce)")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color(.gray))
                                }
                                Text("Save 15% when you buy $30.00 of select items")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color(.gray))
                                HStack{
                                    Image("prime")
                                        .resizable()
                                        .frame(width:50, height: 13)
                                    Text("One-Day")
                                        .font(.system(size: 12))
                                }
                                Text("FREE delivery Tomorrow, Dec 15 Or FREE delivery Overnight 4 AM - 8 AM on $25 of qualifying items")
                                    .font(.system(size: 12))
                                HStack{
                                    Text("Arrives before Christmas")
                                        .font(.system(size: 12))
                                        .foregroundColor(Color("success"))
                                }
                                
                                //TAKE TO CART
                                
                                Button(action: {
                                    withAnimation(.easeOut(duration: 0.3)) {
                                        self.product.toggle()
                                    }
                                }) {
                                    Text("Add to Cart")
                                        .foregroundColor(.black)
                                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                        .background(Color("AmazonYellow"))
                                        .cornerRadius(5)
                                        .font(.system(size: 10))
                                }.buttonStyle(PlainButtonStyle())
                                  
                               
                            }
                            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                            .foregroundColor(.black)
                            .frame(maxHeight: .infinity, alignment: .topLeading)
                        }
                        // CARD END

                        
                    }
                    
                }
                
            }
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .background(Color.white)
            
        }
        
    }
}
