//
//  Direction.swift
//  MastersCodeTest
//
//  Created by 박혜원 on 2020/12/13.
//

import Foundation

enum Direction {
    case upLeft // 가장 윗줄을 왼쪽으로 U
    case upRight // 가장 윗줄을 오른쪽으로 U'
    case rightUp // 가장 오른쪽줄을 위로 R
    case rightDown // 가장 오른쪽줄을 아래로 R'
    case leftDown // 가장 왼쪽 줄을 아래로 L
    case leftUp // 가장 왼쪽 줄을 위로 L'
    case downRight // 가장 아랫줄을 오른쪽으로 B
    case downLeft // 가장 오른쪽 줄을 왼쪽으로 B'
    
    case quit // 종료
}
