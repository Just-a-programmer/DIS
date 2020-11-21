//
//  DataModel.swift
//  DIS
//
//  Created by Manan Jain on 21/11/20.
//

import Combine
import RealityKit
final class DataModel: ObservableObject
{
    static var shared = DataModel()
    @Published var arView: ARView!
    @Published var enableAR = true
    init()
    {
        arView=ARView(frame : .zero)
        let boxAnchor=try! Experience.loadBox()
        arView.scene.anchors.append(boxAnchor)
        
    }
}
