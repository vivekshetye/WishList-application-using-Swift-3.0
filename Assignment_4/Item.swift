//
//  Item.swift
//  Assignment_4
//
//  Created by Vivek Shetye on 10/22/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import Foundation
//
//  Item.swift
//  Assignment_3
//
//  Created by Vivek Shetye on 10/15/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import Foundation

class Item {
    
    var itemName:String?
    var itemDesc:String?
    var price:Float?
    var itemType:String?
    //var purchase:Purchase?
    var store:Store?
    
    init(_ itemName:String, _ itemDesc:String, _ price:Float, _ itemType:String, _ store:Store) {
        self.itemName=itemName
        self.itemDesc=itemDesc
        self.itemType=itemType
        self.price=price
        self.store=store
    }

//    init(_ itemName:String) {
//        self.itemName=itemName
//    }
    
    
    
}
