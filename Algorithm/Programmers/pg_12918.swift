//
//  pg_12918.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12918
//  문자열 다루기 기본

import Foundation

func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) ? Int(s) == nil ? false : true : false
}

print(solution("a123"))

/*
 0.03ms, 16.2MB
 */
