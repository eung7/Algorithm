//
//  왕실의 나이트.swift
//  Algorithm
//
//  Created by 김응철 on 10/7/23.
//

import Foundation

let input = readLine()!
let columns = ["a", "b", "c", "d", "e", "f", "g", "h"]
let x = columns.firstIndex(of: String(input.first!))!
let y = Int(String(input.last!))!
var coordinator = (x: Int(x) + 1, y: y)
var results: Int = 0

enum Direction: CaseIterable {
  case leftUp
  case leftDown
  case upLeft
  case upRight
  case rightUp
  case rightDown
  case downLeft
  case downRight
  
  var value: (x: Int, y: Int) {
    switch self {
    case .leftUp: (-2, 1)
    case .leftDown: (-2, -1)
    case .upLeft: (-1, 2)
    case .upRight: (1, 2)
    case .rightUp: (2, 1)
    case .rightDown: (2, -1)
    case .downLeft: (-2, -1)
    case .downRight: (-2, 1)
    }
  }
}

Direction.allCases.forEach { direction in
  var coordinator = coordinator
  coordinator.x += direction.value.x
  coordinator.y += direction.value.y
  if coordinator.x > 0 && coordinator.y > 0 {
    results += 1
  }
}

print(results)
