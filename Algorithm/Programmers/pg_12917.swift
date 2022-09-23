//
//  pg_12917.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12917
//  문자열 내림차순으로 정렬하기

import Foundation

func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}

print(solution("Zbcdefg"))
