//
//  pg_12947.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12947
//  하샤드 수

import Foundation

func solution(_ x:Int) -> Bool {
    var sum = 0
    
    for i in String(x) {
        guard let number = Int(String(i)) else { break }
        sum += number
        print(sum)
    }
    return (sum % x == 0 ? true : false)
}
