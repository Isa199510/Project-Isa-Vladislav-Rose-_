//
//  ShoppingList.swift
//  Project(Isa, Vladislav, Rose)
//
//  Created by Иса on 01.12.2022.
//

import Foundation

struct Purchase {
    let name: String
    let quantity: Double
    let price: Double
    
    var amount: Double {
        quantity * price
    }
}

struct ShoppingLists {
    let name: String
    let purchases: [Purchase]
    
    var totalPrice: Double {
        var amount = 0.0
        for purchase in purchases {
            amount += purchase.amount
        }
        return amount
    }
    
    init(_ name: String) {
        self.name = name
        purchases = [Purchase]()
    }
}
