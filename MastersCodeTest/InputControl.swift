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

typealias Direct = (Direction, ClockDirection)

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
    
    static func convertedTurn(input: String) -> Direct {
        
        switch input {
        case "F" : return (.front, .clockwise)
        case "F'" : return (.front, .anticlockwise)
            
        case "R" : return (.back, .clockwise)
        case "R'" : return (.back, .anticlockwise)
            
        case "U" : return (.up, .clockwise)
        case "U'" : return (.up, .anticlockwise)
            
        case "B" : return (.back, .clockwise)
        case "B'" : return (.back, .anticlockwise)
            
        case "L" : return (.left, .clockwise)
        case "L'" : return (.left, .anticlockwise)
            
        case "D" : return (.down, .clockwise)
        case "D'" : return (.down, .anticlockwise)
            
        default:
            return (.quit, .clockwise)
        }
    }
}
