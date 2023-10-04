//
//  숫자 카드 게임.swift
//  CodingTest
//
//  Created by 김응철 on 10/4/23.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let columnsCount = input.last!
let rowsCount = input.first!
var rows: [[Int]] = []

for _ in 1...rowsCount {
  rows.append(readLine()!.components(separatedBy: " ").map { Int($0)! })
}

print(rows.map { $0.min()! }.max()!)
