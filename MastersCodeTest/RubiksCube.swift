//
//  RubiksCube.swift
//  MastersCodeTest
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

class RubiksCube {
    var cube : [PlaneCube]
    var continueToPlayGame = true
    
    init() {
        cube = [PlaneCube]()
        for color in CubeColor.allCases {
            cube.append(PlaneCube(color: color))
        }
        // TODO: shuffle
    }
    
    func move(inputs: [String]?) {
        for input in inputs! {
            let convertedDirect = InputControl.convertedTurn(input: input)
            
            if( convertedDirect.0 == .quit){
                self.continueToPlayGame = false
                break
            }
            pushCube(dirt: convertedDirect)
        }
    }
    func pushCube(dirt: Direct){

    }
    func printCube() {
        for item in cube {
            item.printPlane()
        }
    }
}
