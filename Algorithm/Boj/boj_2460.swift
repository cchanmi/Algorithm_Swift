//
//  boj_2460.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/12/05.
//  지능형 기차 2

/*
 하나의 배열을 만든다
 내린 사람의 수를 빼고, 탄 사람의 수를 더한 값을 배열의 넣고
 그 배열들 중에서 가장 큰 수를 출력하면 될 것 같다
 */

import Foundation

var sumPerson = 0
var result: [Int] = []

for _ in 0..<10 {
    let person = readLine()!.split(separator: " ").map{Int($0)!}
    sumPerson = sumPerson - person[0] + person[1]
    result.append(sumPerson)
}

print(result.max()!)

/*
 메모리 : 79512 KB 시간 : 12 ms
 */
