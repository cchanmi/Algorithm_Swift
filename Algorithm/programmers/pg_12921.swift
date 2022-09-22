//
//  pg_12921.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12921
//  소수 찾기

import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    
    for i in 2...n {
        var isPrime = true
        for j in 2...Int(sqrt(Double(n)))+1{
            if i != j && i % j == 0 {
                isPrime = false
                break
            }
        }
        result = isPrime == true ? result + 1 : result
    }
    return result
}

print(solution(5))

/*
 0.01ms, 16.3MB
 
 효율성 코드 25.0 %
 1304.39ms, 16.3MB
 */
