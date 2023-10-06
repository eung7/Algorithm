//
//  상하좌우.swift
//  Algorithm
//
//  Created by 김응철 on 10/5/23.
//

import Foundation

let size = Int(readLine()!)!
let contents = readLine()!.components(separatedBy: " ")
var coordinator: (row: Int, column: Int) = (1, 1)

contents.forEach { move in
  switch move {
  case "L":
    if coordinator.column == 1 { return }
    coordinator.column -= 1
  case "R":
    if coordinator.column == size { return }
    coordinator.column += 1
  case "U":
    if coordinator.row == 1 { return }
    coordinator.row -= 1
  default:
    if coordinator.row == size { return }
    coordinator.row += 1
  }
}

print("\(coordinator.row) \(coordinator.column)")
