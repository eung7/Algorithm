//
//  시각.swift
//  Algorithm
//
//  Created by 김응철 on 10/5/23.
//

import Foundation

let n = Int(readLine()!)!
var count: Int = 0

for i in 0...n {
  
  for j in 0...59 {
    
    for k in 0...59 {
      let hours = String(format: "%02d", i)
      let minutes = String(format: "%02d", j)
      let seconds = String(format: "%02d", k)
      let time = hours + minutes + seconds
      if time.contains("3") {
        count += 1
        continue
      }
    }
    
  }
}

print(count)
