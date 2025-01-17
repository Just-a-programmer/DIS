//
//  ContentView.swift
//  DIS
//
//  Created by Manan Jain on 21/11/20.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @EnvironmentObject var data: DataModel
    var body: some View
    {
        HStack
        {
            ARUIView()
    
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DataModel.shared)
    }
}
#endif
