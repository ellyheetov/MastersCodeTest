//
//  main.swift
//  MastersCodeTest
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

struct CubeGame{
    var plainCube = PlainCube()
    
    mutating func play(){
        plainCube.printCube()
        
        while(plainCube.continueToPlayGame){
            let times = InputControl.getInput()
            plainCube.move(inputs: times)
        }
    }
}

var cubeGame = CubeGame()
cubeGame.play()
