//
//  게임 개발.swift
//  Algorithm
//
//  Created by 김응철 on 10/7/23.
//

import Foundation

enum Direction: Int {
  case north
  case east
  case south
  case west
}

// N X M 사이즈 인풋
var input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let verticalSize = input[0]
let horizontalSize = input[1]

// 현재 좌표 및 바라보는 방향 인풋
input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var direction: Direction = Direction(rawValue: input[2])!
var coordinates: [Int] = [input[0], input[1]]

// 맵을 구성하는 인풋
var map: [[Int]] = []
for _ in 1...verticalSize {
  map.append(readLine()!.components(separatedBy: " ").map { Int($0)! })
}
var finishedLands = Set<[Int]>()
finishedLands.insert(coordinates)

func isAvailableLeftSideLand() -> Bool {
  var coordinates = coordinates
  switch direction {
  case .north:
    coordinates[1] -= 1
  case .east:
    coordinates[0] -= 1
  case .south:
    coordinates[1] += 1
  case .west:
    coordinates[0] += 1
  }
  if coordinates.contains(-1) || // 범위 밖이거나
      map[coordinates[0]][coordinates[1]] == 1 || // 바다거나
      finishedLands.contains(coordinates) { // 포함되어 있거나
    return false
  } else {
    return true
  }
}

func nextDirection() {
  switch direction {
  case .north:
    direction = .west
  case .east:
    direction = .north
  case .south:
    direction = .east
  case .west:
    direction = .south
  }
}

func nextCoordinates() {
  switch direction {
  case .north:
    coordinates[0] -= 1
  case .east:
    coordinates[1] += 1
  case .south:
    coordinates[0] += 1
  case .west:
    coordinates[1] -= 1
  }
}

func backCoordinates() {
  switch direction {
  case .north:
    coordinates[0] += 1
  case .east:
    coordinates[1] -= 1
  case .south:
    coordinates[0] -= 1
  case .west:
    coordinates[1] += 1
  }
}

var count: Int = 0
while true {
  if count == 4 {
    backCoordinates()
    if map[coordinates[0]][coordinates[1]] == 1 {
      break
    } else {
      finishedLands.insert(coordinates)
      count = 0
      continue
    }
  }
  if isAvailableLeftSideLand() {
    nextDirection()
    nextCoordinates()
    finishedLands.insert(coordinates)
    count = 0
  } else {
    nextDirection()
    count += 1
  }
}
print(finishedLands.count)
