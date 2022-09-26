//
//  pg_42862.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/42862
//  체육복

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var losts = lost.filter{!reserve.contains($0)}
    var reserves = reserve.filter{!lost.contains($0)}.sorted()
    
    for i in reserves {
        if losts.contains(i - 1) {
            let index = losts.firstIndex(of: i - 1)!
            losts.remove(at: index)
            continue
        }
        if losts.contains(i + 1) {
            let index = losts.firstIndex(of: i + 1)!
            losts.remove(at: index)
        }
    }
    return n - losts.count
}

print(solution(3, [3], [1]))

/*
 0.12ms, 16.6MB
 */
