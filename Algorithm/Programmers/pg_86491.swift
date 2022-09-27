//
//  pg_86491.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/86491
//  최소직사각형

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var width = 0
    var lenth = 0
    
    sizes.forEach {
        width = max(width, $0.max()!)
        lenth = max(lenth, $0.min()!)
    }
    
    return width * lenth
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))

/*
 0.19ms, 16.2MB
 */
