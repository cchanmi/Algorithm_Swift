//
//  pg_68935.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/68935
//  3진법 뒤집기

import Foundation

func solution(_ n:Int) -> Int {
    return Int(String(String(n, radix: 3).reversed()), radix: 3)!
}

print(solution(45)) // 7

/*
 0.08ms / 16.4MB
 */
