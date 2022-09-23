//
//  pg_42748.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/42748
//  K번째 수

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var resultArray: [Int] = []
    
    for command in commands{
        let i = command[0] - 1
        let j = command[1] - 1
        let k = command[2] - 1
        let sortedArray = array[i...j].sorted()
        resultArray.append(sortedArray[k])
    }
    return resultArray
}

/// 고차함수 공부해야할듯 ... ㅠㅜ
