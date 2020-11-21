//
//  FoodItem.swift
//  DIS
//
//  Created by Manan Jain on 21/11/20.
//

class FoodItem: Identifiable {
    var name : String=""
    var picture : String = ""
    init(pname: String, ppic: String) {
        self.name = pname
        self.picture = ppic
    }
}
