//
//  pg_12928.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12928
//  약수의 합

import Foundation

func solution(_ n:Int) -> Int {
    if n == 0 { return 0 }
    return (1...n).filter{ n % $0 == 0 }.reduce(0, +)
}

print(solution(0))

/*
 0.02ms / 16.2MB
 */
