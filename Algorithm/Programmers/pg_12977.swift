//
//  pg_12977.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12977
//  소수 만들기

/*
 3개의 숫자만 뽑고, 더해서 나온 값이 소수인지? 아닌지? count 한다
 */

import Foundation

func solution(_ nums:[Int]) -> Int {
    var array: [Int] = []
    
    for i in 0...nums.count - 3 {
        for j in i + 1...nums.count - 2 {
            for k in j + 1...nums.count - 1 {
                array.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    
    return array.filter { isPrime($0) }.count
}

func isPrime(_ n: Int) -> Bool {
    for i in 2...n - 1 {
        if n % i == 0 {
            return false
        }
    }
    return true
}

print(solution([1,2,7,6,4]))

/*
 최소 0.06ms, 16.4MB ~ 최대 52.22ms, 16.6MB
 */
