//
//  pg_76501.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/76501
//  음양 더하기

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    
    for (i, number) in absolutes.enumerated() {
        result += signs[i] == true ? number : -number
    }
    
    return result
}

/*
 0.22ms / 16.5 MB
 */
