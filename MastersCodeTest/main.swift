//
//  main.swift
//  MastersCodeTest
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

struct CubeGame{
    var cube = RubiksCube()
    
    mutating func play(){
        // TODO: 경과시간 체크
        while(cube.continueToPlayGame){
            let times = InputControl.getInput()
//            cube.move(inputs: times)
            print(times!)
        }
        // TODO: 모든 면을 맞출 시 축하 메시지
    }
}

var cubeGame = CubeGame()
cubeGame.play()
