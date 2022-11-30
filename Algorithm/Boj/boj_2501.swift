//
//  boj_2501.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/11/30.
//

import Foundation

let number = readLine()!.split(separator: " ").map{Int($0)!}
let n = number[0]
let k = number[1]
var array: [Int] = []

for i in 1...n {
    if n % i == 0 {
        array.append(i)
    }
}

if array.count >= k {
    let result = array[k - 1]
    print(result)
} else {
    print(0)
}

/*
 메모리: 79512 KB, 시간: 12 ms
 */
