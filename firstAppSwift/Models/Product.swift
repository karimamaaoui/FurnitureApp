//
//  Product.swift
//  firstAppSwift
//
//  Created by karimamaaoui on 3/24/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import Foundation
struct Product: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Red wine sweater ", image: "sweater1", price: 54),
                   Product(name: "Bleu jacket ", image: "sweater2", price: 45),
                   Product(name: "Colors wine sweater ", image: "sweater3", price: 87),
                   Product(name: "Green wine sweater ", image: "sweater4", price: 67),
                   Product(name: "Orange wine sweater ", image: "sweater5", price: 98),
                

                    ]
