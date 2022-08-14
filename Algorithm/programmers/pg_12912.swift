//
//  main.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12912
//  두 정수 사이의 합

import Foundation

func solution(_ a: Int, _ b: Int) -> Int {
    var result = 0
    
    for i in (b > a ? a...b : b...a) {
        result += i
    }
    return result
}

