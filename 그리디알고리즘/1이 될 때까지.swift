//
//  1이 될 때까지.swift
//  Algorithm
//
//  Created by 김응철 on 10/5/23.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var n = input.first!
let k = input.last!
var count: Int = 0

while true {
  guard n != 1 else { break }
  if n % k == 0 {
    n = n / k
  } else {
    n -= 1
  }
  count += 1
}

print(count)
