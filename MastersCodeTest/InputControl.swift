//
//  InputView.swift
//  MastersCourse-Step1
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

enum InputError : Error {
    case invalidString
    case notInteger
    case integerOutOfRange
    case invalidDirection
}

enum Direction {
    case Left
    case Right
}

struct InputControl {
    static func getInput() -> (String, Int, Direction) {
        let myInput = getAnswerTo()
        
        let splitedInput = myInput?.components(separatedBy: " ")
        
        do {
            try checkInvalid(input: splitedInput)
        } catch {
            print("[Error] \(error)")
        }
        
        let string = splitedInput?[0]
        var number = Int((splitedInput?[1])!)
        number = number! % string!.count
        let direction : Direction
        
        if splitedInput?[2] == "L"  || splitedInput?[2] == "l" {
            if number! < 0 {
                number = abs(number!)
                direction = .Right
            } else {
                direction = .Left
            }
        }else {
            if number! < 0 {
                number = abs(number!)
                direction = .Left
            } else {
                direction = .Right
            }
        }
        return (string!, number!, direction)
    }
    
    static func checkInvalid(input : [String]?) throws {
        if input?[0] == nil {
            throw InputError.invalidString
        }
        if Int((input?[1])!) == nil {
            throw InputError.notInteger
        }
        if Int(((input?[1])!))! >= 100 || Int(((input?[1])!))! < -100 {
            throw InputError.integerOutOfRange
        }
        if input?[2] != "L" && input?[2] != "R" && input?[2] != "r" && input?[2] != "l" {
            throw InputError.invalidDirection
        }
    }
    static func getAnswerTo() -> String? {
        print(">", terminator: " ")
        guard let answer = readLine() else {
            return nil
        }
        return answer
    }
}
