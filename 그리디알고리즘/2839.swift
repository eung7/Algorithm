//
//  main.swift
//  Algorithm
//
//  Created by 김응철 on 9/18/23.
//

import Foundation

let n = Int(readLine()!)!
var bag: Int = 0

var target: Int = n

while true {
  let restTarget = n - target
  
  if target < 0 {
    bag = -1
    break
  }
  
  if target % 5 == 0 ,
     restTarget % 3 == 0 {
    bag += target / 5
    bag += restTarget / 3
    break
  } else {
    target -= 1
  }
}

print(bag)
