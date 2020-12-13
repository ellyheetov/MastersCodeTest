//
//  PlainCube.swift
//  MastersCodeTest
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

struct PlainCube {
    
    var cube = [[String]](repeating: Array(repeating: "", count: 3), count: 3)
    var continueToPlayGame = true
    
    init() {
        cube[0][0] = "R"; cube[0][1] = "R"; cube[0][2] = "W";
        cube[1][0] = "G"; cube[1][1] = "C"; cube[1][2] = "W";
        cube[2][0] = "G"; cube[2][1] = "B"; cube[2][2] = "B"
    }
    
    mutating func move(inputs: [String]?){
        for input in inputs! {
            let convertedDirect = InputControl.convertedTurn(input: input)
            
            if(convertedDirect == .quit){
                print("Bye~")
                self.continueToPlayGame = false
                break
            }
            pushCube(dirt: convertedDirect)
            print(input)
            printCube()
        }
    }
    
    mutating func pushCube(dirt : Direction){
        switch dirt {
        case .upLeft: moveUpLeft()
        case .upRight: moveUpRight()
        case .rightUp: moveRightUp()
        case .rightDown: moveRightDown()
        case .leftDown: moveLeftDown()
        case .leftUp: moveLeftUp()
        case .downRight: moveDownRight()
        case .downLeft: moveDownLeft()
        default:
            break
        }
    }
    func printCube() {
        print("\(cube[0][0]) \(cube[0][1]) \(cube[0][2])")
        print("\(cube[1][0]) \(cube[1][1]) \(cube[1][2])")
        print("\(cube[2][0]) \(cube[2][1]) \(cube[2][2])", terminator: "\n\n")
    }
    mutating func moveUpLeft() {
        let temp = cube[0][0]
        cube[0][0] = cube[0][1]
        cube[0][1] = cube[0][2]
        cube[0][2] = temp
    }
    mutating func moveUpRight() {
        let temp = cube[0][2]
        cube[0][2] = cube[0][1]
        cube[0][1] = cube[0][0]
        cube[0][0] = temp
    }
    mutating func moveRightUp() {
        let temp = cube[0][2]
        cube[0][2] = cube[1][2]
        cube[1][2] = cube[2][2]
        cube[2][2] = temp
    }
    mutating func moveRightDown() {
        let temp = cube[2][2]
        cube[2][2] = cube[1][2]
        cube[1][2] = cube[0][2]
        cube[0][2] = temp
    }
    mutating func moveLeftDown(){
        let temp = cube[2][0]
        cube[2][0] = cube[1][0]
        cube[1][0] = cube[0][0]
        cube[0][0] = temp
    }
    mutating func moveLeftUp(){
        let temp = cube[0][0]
        cube[0][0] = cube[1][0]
        cube[1][0] = cube[2][0]
        cube[2][0] = temp
    }
    mutating func moveDownRight() {
        let temp = cube[2][2]
        cube[2][2] = cube[2][1]
        cube[2][1] = cube[2][0]
        cube[2][0] = temp
    }
    mutating func moveDownLeft() {
        let temp = cube[2][0]
        cube[2][0] = cube[2][1]
        cube[2][1] = cube[2][2]
        cube[2][2] = temp
    }
}
