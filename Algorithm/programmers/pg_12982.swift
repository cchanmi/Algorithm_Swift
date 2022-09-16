//
//  pg_12982.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12982
//  예산

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result = 0
    var budget = budget
    let sortedD = d.sorted()


    for i in sortedD {
        if budget - i >= 0 {
            budget -= i
            result += 1
        } else {
            break
        }
    }

    return result
}

/*
 0.14ms / 16.5MB
 */

func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    
    return d.sorted().filter {
        budget -= $0
        return budget >= 0
    }.count
}

print(solution([1,3,2,5,4], 9))

/*
 0.10ms / 16.3MB
 */
