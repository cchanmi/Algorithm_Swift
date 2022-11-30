//
//  boj_18310.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/11/16.
//

/*
 for문으로 전체 약수를 구하는 방법(비효율적인 방법)
 */
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

/*
 제곱근을 구해서 구하는 방법(효율적인 방법)
 */

import Foundation

let number = readLine()!.split(separator: " ").map{Int($0)!}
let n = number[0]
let k = number[1]
var array: [Int] = []

for i in 1...Int(sqrt(Double(n))) {
    if n % i == 0 {
        array.append(i)
    }
}

for i in array {
    let number = n / i
    if array.contains(number) {
        continue
    } else {
        array.append(number)
    }
}

array.sort()

if array.count >= k {
    let result = array[k - 1]
    print(result)
} else {
    print(0)
}

/*
 메모리:79516 KB 시간: 12ms
 효율적인지 잘 모르겠음
 */

