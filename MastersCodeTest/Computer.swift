//
//  Computer.swift
//  MastersCourse-Step1
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

struct Computer {
    
    typealias Input = (str: String, count: Int, direct : Direction)
    
    func execute(){
        let myInput = InputControl.getInput()
        let result = self.pushString(input: myInput)
        printString(str: result)
    }
    
    private func pushString(input: Input) -> String{
        return "leapp"
    }

    private func printString(str : String) {
        print(str)
    }
}
