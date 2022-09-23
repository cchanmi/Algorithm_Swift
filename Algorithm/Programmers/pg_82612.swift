//
//  pg_82612.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/82612
//  부족한 금액 계산하기

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var result = 0

    for i in 1...count {
        result += price * i
    }

    result = (result - money)

    return result > 0 ? Int64(result) : 0
}

/*
 0.02ms / 16.5MB
 */

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let answer = Int64((1...count).map{$0 * price}.reduce(0, +) - money)

    return answer > 0 ? answer : 0
}

/*
 0.21ms /16.1MB
 */
