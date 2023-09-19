//
//  11399.swift
//  Algorithm
//
//  Created by 김응철 on 9/19/23.
//

import Foundation

let totalLines = Int(readLine()!)!
var timesForWithdrawl: [Int] = (readLine()!).split(separator: " ")
  .map { Int($0)! }
  .sorted(by: { $0 < $1 })

var totalTime: Int = 0
timesForWithdrawl.enumerated().forEach { index, time in
  totalTime += timesForWithdrawl[0...index].reduce(0, { $0 + $1 })
}
print(totalTime)
