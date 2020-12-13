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
        let result : String
        
        switch input.direct {
        case .Left :
            let firstIndex = String.Index(utf16Offset: 0, in: input.str)
            let lastIndex = String.Index(utf16Offset: input.count, in: input.str)
            result = String(input.str[lastIndex..<input.str.endIndex]) + String(input.str[firstIndex..<lastIndex])
        case .Right :
            let startIndex = String.Index(utf16Offset: 0, in: input.str)
            let lastIndex = String.Index(utf16Offset: input.str.count - input.count, in: input.str)
            result = String(input.str[lastIndex..<input.str.endIndex]) + String(input.str[startIndex..<lastIndex])
        }
        return result
    }

    private func printString(str : String) {
        print(str)
    }
}
