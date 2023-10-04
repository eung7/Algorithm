//
//  큰 수의 법칙.swift
//  CodingTest
//
//  Created by 김응철 on 10/4/23.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var array = readLine()!.components(separatedBy: " ").map { Int($0)! }
array.sort(by: { $0 > $1 })

let n = input.first!
let m = input[1]
let k = input.last!
var result: Int = 0
var count: Int = 0

let maxNum = array.first!
let secondNum = array[1]

for _ in 1...m {
  if count > (k - 1) {
    result += secondNum
    count = 0
  } else {
    result += maxNum
    count += 1
  }
}

print(result)
