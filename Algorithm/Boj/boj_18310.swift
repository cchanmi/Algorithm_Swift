//
//  boj_18310.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/11/16.
//

import Foundation

let number = Int(readLine()!)!
var home = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

let half = home.count % 2 == 0 ? home.count / 2 - 1 : home.count / 2

print(home[half])
