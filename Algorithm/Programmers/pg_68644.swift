//
//  pg_68644.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/68644
//  두 개 뽑아서 더하기

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: Set<Int> = []
    
    for i in 0..<numbers.count - 1 {
        for j in i+1..<numbers.count {
            result.insert(numbers[i] + numbers[j])
        }
    }

    return Array(result).sorted()
}
