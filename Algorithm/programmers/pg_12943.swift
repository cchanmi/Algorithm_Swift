//
//  pg_12943.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12943
//  콜라츠 추측

import Foundation

func solution(_ num:Int) -> Int {
    var n = num
    var count = 0
    
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = n*3+1
        }
        count += 1
    }
    
    return count > 500 ? -1 : count
}
