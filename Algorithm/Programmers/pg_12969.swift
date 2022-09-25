//
//  pg_12969.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12969
//  직사각형 별찍기

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for i in 1...b {
    print(String(repeating: "*", count: 3))
}

/*
 5.43ms, 14.3MB
 */

//for _ in 1...b {
//    for _ in 1...a - 1 {
//        print("*", terminator: "")
//    }
//    print("*")
//}

/*
 테스트 3, 4에서 틀린 이유는 찾아라.
 signal: illegal instruction (core dumped)
 Array의 Index out of range 문제, 옵셔널 문제, 잘못된 수식 문제, 논리 에러 등
 */
