//
//  pg_12919.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12919
//  서울에서 김서방 찾기

import Foundation

func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.index(of: "Kim")!)에 있다"
}

print(solution(["Jane", "Kim"]))

/*
 0.02ms / 16.4MB
 */
