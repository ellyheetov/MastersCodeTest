//
//  InputControl.swift
//  MastersCodeTest
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

enum InputError : Error {
    case invalidInput
}

struct InputControl {
    static func getInput() -> [String]? {
        print("CUBE>", terminator: " ")
        guard let response = readLine() else {
            return nil
        }
        let splitedList = response.map{ String($0)}
        
        var answer = [String]()
        
        for char in splitedList {
            if char == "\'" && !answer.isEmpty {
                let temp = answer.last!
                answer.removeLast()
                answer.append(temp + char)
            }
            else {answer.append(char)}
        }
        return answer
    }
    
    static func convertedTurn(input: String) -> Direction {
        
        switch input {
        case "U": return .upLeft
        case "U'" : return .upRight
        case "R" : return .rightUp
        case "R'" : return .rightDown
        case "L" : return .leftDown
        case "L'" : return .leftUp
        case "B" : return.downRight
        case "B'" : return.downLeft
        default:
            return .quit
        }
    }
}

