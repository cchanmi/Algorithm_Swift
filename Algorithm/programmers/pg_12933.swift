//
//  pg_12933.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12933
//  정수 내림차순으로 배치하기

import Foundation

func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >)))!
}
