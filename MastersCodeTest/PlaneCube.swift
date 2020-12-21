//
//  PlaneCube.swift
//  MastersCodeTest
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

enum CubeColor : CaseIterable {
    case White
    case Blue
    case Green
    case Yellow
    case Orange
    case Red
}

class PlaneCube {
    var plane : [[CubeColor]]
    
    init(color : CubeColor) {
        plane = Array(repeating: Array(repeating: color, count: 3), count: 3)
    }
    
    func printPlane() {
        for item in plane {
            for i in item {
                print(i,terminator: " ")
            }
            print()
        }
    }
}
