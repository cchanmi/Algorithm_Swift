//
//  boj_3460.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/12/02.
//

/*
 처음에 받는 number가 무슨 값인지 잘 몰랐는데... test case였음
 test case만큼 for 문을 돌려야 하는데...
 문제를 잘 읽자 ㅋㅋ
 
 끝부분에 불필요한 공백 추가되는 것 제거해 주는 분리처리 해줌
 */

import Foundation

let number = Int(readLine()!)!
var binaryNumber = ""

for _ in 0..<number {
    let input = Int(readLine()!)!
    binaryNumber = String(input, radix: 2)
    for (i, v) in binaryNumber.reversed().enumerated() {
        if v == "1" {
            if i == binaryNumber.count - 1 {
                print(i)
            } else {
                print(i, terminator: " ")
            }
        }
    }
}
