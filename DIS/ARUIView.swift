//
//  ARUIView.swift
//  DIS
//
//  Created by Manan Jain on 21/11/20.
//

import SwiftUI

struct ARUIView: View {
    @EnvironmentObject var data: DataModel
    var item1: FoodItem = FoodItem(pname: "Burger", ppic: "Burger")
    var body: some View
    {
        VStack
        {
            Text("Welcome To Food AR").font(.system(size: 30))
            NavigationView
            {
                List([item1])
                {
                    curItem in ItemCell(item:curItem)
                }
                .navigationBarTitle("Menu")
            }
            
        }
    }
}

struct ARUIView_Previews: PreviewProvider {
    static var previews: some View {
        ARUIView().environmentObject(DataModel.shared)
    }
}
struct ItemCell :View {
    var item: FoodItem
    var body: some View
    {
        NavigationLink(destination: ARDisplayView())
        {
            HStack
            {
                Image(item.picture).resizable().frame(width: 100, height: 80)
                Text(item.name)
            }
        }
    }
}



