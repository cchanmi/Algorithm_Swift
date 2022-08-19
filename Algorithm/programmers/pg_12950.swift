//
//  pg_12950.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12950
//  행렬의 덧셈

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    
    for i in 0..<arr1.count {
        var array: [Int] = []
        for j in (0..<arr1[i].count) {
            array.append(arr1[i][j] + arr2[i][j])
        }
        result.append(array)
    }

    return result
}

/*
 arr1.count는 행렬의 행
 arr1[i].count는 해당 행의 열!
 */
