//
//  RubiksCube.swift
//  MastersCodeTest
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

class RubiksCube {
    var cube : [PlaneCube]
    
    init() {
        cube = [PlaneCube]()
        for color in CubeColor.allCases {
            cube.append(PlaneCube(color: color))
        }
    }
    
    func printCube() {
        for item in cube {
            item.printPlane()
        }
    }
}
