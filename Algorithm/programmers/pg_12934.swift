//
//  pg_12934.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12934
//  정수 제곱근 판별

import Foundation

func solution(_ n:Int64) -> Int64 {
    let number = Int64(sqrt(Double(n)))
    return (number * number) == n ? (number+1)*(number+1) : -1
}
