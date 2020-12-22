//
//  Direction.swift
//  MastersCodeTest
//
//  Created by 박혜원 on 2020/12/13.
//
import Foundation

/*
 F – 앞 (Front)
 R – 오른쪽 (Right)
 U – 위 (Up)
 B – 뒤 (Back)
 L – 왼쪽 (Left)
 D – 아랫쪽 (Down)
 */
enum Direction {
    case front
    case right
    case up
    case back
    case left
    case down
    
    case quit // 종료
}

enum ClockDirection {
    case clockwise
    case anticlockwise
}
