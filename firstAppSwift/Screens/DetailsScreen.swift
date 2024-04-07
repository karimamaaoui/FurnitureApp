//
//  DetailsScreen.swift
//  firstAppSwift
//
//  Created by karimamaaoui on 4/7/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import SwiftUI

struct DetailsScreen: View {
        var body: some View {
            ZStack {
                
                Color("Bg").edgesIgnoringSafeArea(.all)
                ScrollView {
                    Image("chair2").resizable().aspectRatio(contentMode: .fit)
                        
                    DescriptionView()
                        .offset(y: 40)
                }.edgesIgnoringSafeArea(.top)
                
                HStack {
                    Text("$299")
                        .font(.title).foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ , label: {
                        Text("Add to Cart")
                            .padding()
                            .background(Color.white)
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(10.0).foregroundColor(Color("secondColor"))
                    })
                }
                .padding()
                .padding(.horizontal)
                .background(Color("secondColor"))
                    //round specific corners
                    //.cornerRadius(50, corners: .topLeft)
                    
                    .cornerRadius(40)
                    
                    .frame(maxHeight: .infinity, alignment: .bottom)
                
            }
                //thoutha fel bottom mtee view
                .edgesIgnoringSafeArea(.bottom)
            
        }
    }


struct DetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreen()
    }
}


struct DescriptionView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Luruxy Swedia \n Chair")
                .font(.title)
                .fontWeight(.bold)
            
            HStack (spacing: 4) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Image("star")
                        .resizable()
                        .frame(width: 25,height: 25)
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
            }
            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable")
                .lineSpacing(8.0)
                .opacity(0.6)
            
            HStack (alignment: .top) {
                VStack (alignment: .leading) {
                    Text("Size")
                        .fontWeight(.semibold)
                        .padding(.bottom , 4)
                    Text("Height: 120 cm")
                        .opacity(0.6)
                    Text("Wide 80 cm")
                    .opacity(0.6)
                    Text("Diameter 72 cm")
                    .opacity(0.6)
                
                }.frame(maxWidth: .infinity , alignment: .leading)
                VStack (alignment: .leading) {
                    Text("Treatment")
                        .fontWeight(.semibold)
                        .padding(.bottom , 4)
                    Text("Jati Wood, Canvas, \nAmazing Love")
                    .opacity(0.6)
                }
            }.padding(.vertical)
            
            HStack (alignment: .bottom) {
                VStack {
                    Text("Colors")
                        .fontWeight(.semibold)
                    HStack {
                        ColorDoView(color: Color("TextPrimary"))
                        ColorDoView(color: Color("secondColor"))
                        ColorDoView(color: Color("thirdColor"))
                        
                    }
                }
                Spacer()
                VStack {
                    Text("Quantity").fontWeight(.semibold)
                
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                           Image(systemName: "minus").padding(.all ,8)
                                       }
                                       .frame(width: 30, height: 30)
                                       .overlay(RoundedRectangle(cornerRadius: 50)
                                       .stroke())
                                       .foregroundColor(.black)
                                       Text("1")
                                           .font(.title)
                                           .fontWeight(.semibold)
                                           .padding(.horizontal, 8)
                                       
                                       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                           Image(systemName: "plus").padding(.all ,8)
                                       }
                                       .background(Color("thirdColor"))
                                       .clipShape(Circle())
                                       .foregroundColor(.white)
                    }
                }
               
                
            }
        }
        .padding()
        .padding(.top)
        .background(Color.white)
        .cornerRadius(40.0)
    }
}

struct ColorDoView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 24 , height: 24)
            .clipShape(Circle())
    }
}
