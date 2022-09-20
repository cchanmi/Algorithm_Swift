//
//  pg_12940.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12940
//  최대공약수와 최소공배수

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n, m)]
}

print(solution(3, 12))

/*
 0.01ms, 16.1MB
 */
