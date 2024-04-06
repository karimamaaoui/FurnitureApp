//
//  ContentView.swift
//  firstAppSwift
//
//  Created by karimamaaoui on 3/7/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //declare search
    @State private var search: String = ""
  /*  var colums: [GridItem] =  [GridItem(.adaptive(minimum: 160) , spacing: 20)]
    */
    var body: some View {
        /*LazyHStack {
        ForEach(productList, id: \.id) { product in ProductCard (product: product)
            }
        }
        ScrollView(.horizontal) {
                    HStack {
                         ForEach(productList, id: \.id) { product in ProductCard (product: product)
                                  }
                    }
                    .padding()
                }*/
        ZStack {
            Color("Bg").edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                AppBarView()
                TagLineView().padding()
                
              HStack {
                TextField("Search Furniture",text: $search)}
                .padding()
                .background(Color.white)
                .cornerRadius(10.0)
                
        }
    }

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack {
            VStack(spacing: 14) {
                HStack {
                    Button(action: {}){
                        VStack(spacing: 8) {
                            Rectangle().frame(width: 45, height: 4).cornerRadius(4)
                        
                        
                        Rectangle().frame(width: 30, height: 4).cornerRadius(4)
                        
                            Rectangle().frame(width: 45, height: 4).cornerRadius(4)
                        }
                         .foregroundColor(Color("TextPrimary"))

                        .padding(.all,8)
                    .background(Color.white)
                        .cornerRadius(8)

                         }
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        Image(uiImage: #imageLiteral(resourceName: "sweater4")).resizable().frame(width: 50, height: 50).cornerRadius(10.0)
                    }
                        //remove the default styling
                    .buttonStyle(PlainButtonStyle())
                        
                }
            }
        }
    }
}

struct TagLineView: View {
    var body: some View {
        Text("Find The \nBest ")
            .font(.custom("PlayfairDisplay-Regular", size: 28)).foregroundColor(Color("secondColor"))
            + Text("Furniture!").font(.custom("PlayfairDisplay-Bold", size: 28)).foregroundColor(Color("thirdColor"))
    }
}
