//
//  pg_12922.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12922
//  수박수박수박수박수박수?

import Foundation

func solution(_ n:Int) -> String {
    return (1...n).map{ $0 % 2 == 0 ? "박" : "수" }.reduce("", +)
}

print(solution(3))

/*
 0.69ms, 16.3MB
 */
