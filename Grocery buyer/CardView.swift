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
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    @Binding var product: Bool
    let columns = [
        GridItem(.adaptive(minimum: 160))
    ]
    
    
    
    var body: some View {
        ScrollView {
            WrappingHStack {
                
                Spacer()
                //CARD START
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
                        Button("Life Size View"){
                            Task {
                                await openImmersiveSpace(id: "detail")
                            }
                        }
                        // .buttonStyle(PlainButtonStyle())
                        .foregroundColor(.black)
                        //.padding(10)
                        .background(Color("AmazonYellow"))
                        .cornerRadius(20)
                        //  .font(.system(size: 10))
                        
                        Button("Add to Cart") {
                        }
                        .foregroundColor(.black)
                        //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        .background(Color("AmazonYellow"))
                        .cornerRadius(20)
                    }
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                    .foregroundColor(.black)
                    .frame(maxHeight: .infinity, alignment: .topLeading)
                }
                .frame(minWidth: 0, maxWidth: 180)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //CARD END
                
                
                CardOne()
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                CardTwo()
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                CardThree()
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                CardFour()
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //   CardFive()
                //       .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //    CardSix()
                //    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                /// CardSeven()
                //        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //             CardEight()
                //                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //             CardNine()
                //                 .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //              CardTen()
                //                   .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //              CardEleven()
                //                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //     CardTwelve()
                //       .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //    CardThirteen()
                //      .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                
                
            }
            SecondCardView()
            
            
        }  // .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
            .background(Color.white)
        
        
        
    }
}







struct SecondCardView: View {
 
    
    var body: some View {
        ScrollView {
            WrappingHStack {
                
                Spacer()

                CardFive()
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                CardSix()
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                CardSeven()
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                CardEight()
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                CardNine()
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //              CardTen()
                //                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //              CardEleven()
                //                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //     CardTwelve()
                //       .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                //    CardThirteen()
                //      .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                
                
            }
            
        }   //.frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
            .background(Color.white)
        
    }
}












struct CardOne: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c1")
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
                Text("Cheerios: Oat O's Goodness | A Heart-Healthy Choice")
                    .font(.system(size: 15))
                Text("4.95 Ounce (Pack 1)")
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
                    Text("5")
                        .font(.system(size: 20))
                    Text("50")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}


struct CardTwo: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c2")
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
                Text("Pops: Corn Pops Crunch | Bursting with Sweetness")
                    .font(.system(size: 15))
                Text("9.25 Ounce (Pack 1)")
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
                    Text("3")
                        .font(.system(size: 20))
                    Text("99")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}

struct CardThree: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c3")
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
                Text("Cinnamon Toast Crunch: Irresistible Cinnamon Swirls | Breakfast Bliss")
                    .font(.system(size: 15))
                Text("1.99 Ounce (Pack 1)")
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
                    Text("4")
                        .font(.system(size: 20))
                    Text("95")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}



struct CardFour: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c4")
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
                Text("Honey Nut Cheerios: Honey-Kissed Goodness | Nutty and Nourishing")
                    .font(.system(size: 15))
                Text("3.99 Ounce (Pack 1)")
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
                    Text("2")
                        .font(.system(size: 20))
                    Text("99")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}


struct CardFive: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c5")
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
                Text("Trix: Colorful Puffs of Fun | Silly Rabbit's Favorite")
                    .font(.system(size: 15))
                Text("5.95 Ounce (Pack 1)")
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
                    Text("4")
                        .font(.system(size: 20))
                    Text("50")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}



struct CardSix: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c6")
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
                Text("Reese's Puffs: Peanut Butter Cocoa Bliss | Morning Indulgence")
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
                    Text("8")
                        .font(.system(size: 20))
                    Text("25")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}



struct CardSeven: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c7")
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
                Text("Quaker Cereal: Wholesome Oats Perfection | Satisfying and Nutritious")
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
                    Text("1")
                        .font(.system(size: 20))
                    Text("23")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}


struct CardEight: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c8")
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
                Text("Nesquik Cereal: Chocolatey Breakfast Delight | Milk's Best Companion")
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
                    Text("4")
                        .font(.system(size: 20))
                    Text("25")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}




struct CardNine: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c9")
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
                Text("Cinnamon Toast Crunch: Irresistible Cinnamon Swirls | Breakfast Bliss")
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
                    Text("2")
                        .font(.system(size: 20))
                    Text("99")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}


struct CardTen: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c10")
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
                Text("Life Cereal: Simple and Wholesome | Crunchy Goodness")
                    .font(.system(size: 15))
                Text("8.99 Ounce (Pack 1)")
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
                    Text("1")
                        .font(.system(size: 20))
                    Text("99")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}




struct CardEleven: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c11")
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
                Text("Vintage Lucky Charms: Magical Marshmallow Medley | Breakfast Enchantment")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}


struct CardTwelve: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c12")
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
                Text("Bowl Of Teeth | Classic Caveman Cereal Chomp Chomp")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}


struct CardThirteen: View {
    
    var body: some View {
        //CARD START
        VStack {
            
            HStack{
                Image("c13")
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
                Text("Cookie Crisp: Cookies for Breakfast | Sweet and Crunchy")
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
                Button("Life Size View"){
                    
                }
                // .buttonStyle(PlainButtonStyle())
                .foregroundColor(.black)
                //.padding(10)
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
                //  .font(.system(size: 10))
                
                Button("Add to Cart") {
                }
                .foregroundColor(.black)
                //.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("AmazonYellow"))
                .cornerRadius(20)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .foregroundColor(.black)
            .frame(maxHeight: .infinity, alignment: .topLeading)
        }
        .frame(minWidth: 0, maxWidth: 180)
        //CARD END
    }
    
}

