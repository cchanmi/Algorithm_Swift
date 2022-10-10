//
//  곱하기 혹은 더하기.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/10/09.
//

/*
 0이나 1인 경우는 덧셈을 반복하고
 아닌 경우는 곱셈을 반복한다
 */

import Foundation

let input = readLine()!.map { Int(String($0))! }
var result = input[0]

for i in 1..<input.count {
    let number = input[i]
    if result == 0 || number <= 1 {
        result += number
    } else {
        result *= number
    }
}

print(result)
