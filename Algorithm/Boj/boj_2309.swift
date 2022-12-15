//
//  boj_2309.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/12/15.
//  https://www.acmicpc.net/problem/2309
//  일곱 난쟁이

/*
 9명 중에 가짜 난쟁이 2명을 찾으면 됨.
 */

import Foundation

var array: [Int] = []
var first: Int = 0
var second: Int = 0

for _ in 0...8 {
    array.append(Int(readLine()!)!)
}

let resultSum = array.reduce(0, +) - 100

for i in 0...7 {
    for j in i+1...8 {
        if array[i] + array[j] == resultSum {
            // 값을 저장한 다음에 for문을 빠져 나와야 하는데... 이 과정이 없어서 틀림
            first = array[i]
            second = array[j]
            break
        }
    }
}

array.remove(at: array.firstIndex(of: first) ?? 0)
array.remove(at: array.firstIndex(of: second) ?? 0)

array.sort()

for i in 0..<array.count {
    print(array[i])
}

/*
 메모리 : 79512 KB / 시간 : 16 ms
 */


