//
//  pg_12910.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12910
//  나누어 떨어지는 숫자 배열

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result: [Int] = arr.filter{ $0 % divisor == 0 }.sorted()
    return result.count == 0 ? [-1] : result
}

/*
 0.13ms /16,6MB
 */
