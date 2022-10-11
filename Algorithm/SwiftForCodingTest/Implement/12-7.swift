//
//  럭키 스트레이트.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/10/11.
//

/*
 1. 정수 N은 짝수 자릿수만 올 수 있다 (홀수 자릿수값은 애초에 입력으로 들어오지 않으니, 따로 체크 x)
 2. 자릿수를 기준으로 반으로 나눈값을 같은지, 아닌지 처리하면 됨.
 */

import Foundation

private func solution() -> String {
    let input = readLine()!
    let halfN = input.count / 2
    var arrayN: [Int] = []
    var leftResult = 0
    var rightResult = 0
    
    for i in input {
        arrayN.append(Int(String(i))!)
    }
    
    for i in 0..<halfN {
        leftResult += arrayN[i]
    }
    
    for i in halfN..<arrayN.count {
        rightResult += arrayN[i]
    }

    return leftResult == rightResult ? "LUCKY" : "READY"
}

print(solution())

/*
 메모리 : 79508KB, 시간 12ms
 */
