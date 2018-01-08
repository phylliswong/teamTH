//
//  VendingMachine.swift
//  VendingMachine
//
//  Created by djchai on 1/7/18.
//  Copyright © 2018 Treehouse Island, Inc. All rights reserved.
//

import Foundation

enum VendingSelection {
    case soda
    case dietSoda
    case chips
    case cookie
    case sandwich
    case wrap
    case candyBar
    case popTart
    case water
    case fruitJuice
    case sportsDrink
    case gum
}

protocol VendingItem {
    var price: Double { get }
    var quantity: Int { get set }
}

protocol VendingMachine {
    var selection: [VendingSelection] { get }
    var inventory: [VendingSelection : VendingItem] { get set }
    var amountDeposited: Double { get set }
    
    init(inventory: [VendingSelection : VendingItem])
    
    // reads vend(4 .soda)
    func vend(_ quantity: Int, _ selection: VendingSelection) throws
    func deposit(_ amount: Double)
}

struct Item: VendingItem {
    let price: Double
    var quantity: Int
}

enum InventoryError: Error {
    case invalidResource
    case conversionFailure
}

class PlistConverter {
    static func dictionary(fromFile name: String, ofType type: String) throws -> [String:AnyObject] {
        guard let path = Bundle.main.path(forResource: name, ofType: type) else {
            throw InventoryError.invalidResource
        }
        guard let dictionary = NSDictionary(contentsOfFile: path) else {
            throw InventoryError.conversionFailure
        }
        
    }
}

class FoodVendingMachine: VendingMachine {
    let selection: [VendingSelection] = [.soda, .dietSoda, .chips, .cookie, .sandwich, .wrap, .candyBar, .popTart, .water, .fruitJuice, .sportsDrink, .gum]
    
    var inventory: [VendingSelection : VendingItem]
    var amountDeposited: Double = 10.0
    
    required init(inventory: [VendingSelection : VendingItem]) {
        self.inventory = inventory
    }
    
    func vend(_ quantity: Int, _ selection: VendingSelection) throws {
        
    }
    func deposit(_ amount: Double) {
        
    }
    
}










