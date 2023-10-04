//
//  11399.swift
//  Algorithm
//
//  Created by 김응철 on 9/19/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input.first! // 동전 종류
let k = input.last! // 총 값
var coins: [Int] = []
for _ in 0..<n { coins.insert(Int(readLine()!)!, at: 0) }

var result: Int = 0
var restOfMoney: Int = k

coins.forEach { targetCoin in
  result += restOfMoney / targetCoin
  restOfMoney -= (restOfMoney / targetCoin) * targetCoin
}

print(result)
