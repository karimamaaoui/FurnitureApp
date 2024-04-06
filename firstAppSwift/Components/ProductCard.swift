//
//  ProductCard.swift
//  firstAppSwift
//
//  Created by karimamaaoui on 3/24/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import SwiftUI
//
//  ProductCard.swift
//  firstAppSwift
//
//  Created by karimamaaoui on 3/24/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import SwiftUI

struct ProductCard: View {
     var product: Product
       var body: some View {
        ZStack (alignment: .topTrailing){
            ZStack(alignment: .bottom){
                Image(product.image).resizable().cornerRadius(20).frame(width: 180)
                    .scaledToFit()
             VStack(alignment: .leading) {
                Text(product.name)
                
                Text("\(product.price)$")
                    .font(.caption)
             }
            .padding()
             .frame(width: 180, alignment: .leading)
             .background(Color.gray.opacity(0.5)).cornerRadius(20)
                
            }
             .frame(width: 180, height: 250)
             .shadow(radius: 3)
            
           Button(action: {
                print("Added to cart!")
            }) {
                Image(systemName: "plus")
                    .padding(10)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    .padding()
                    .clipShape(Circle())
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
    }
}
