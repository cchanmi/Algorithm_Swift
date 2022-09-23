//
//  pg_12903.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12903
//  가운데 글자 가져오기

import Foundation

func solution(_ s:String) -> String {
    let index = s.count / 2
    
    if s.count % 2 == 0 {
        return String(s[s.index(s.startIndex, offsetBy: index - 1)]) + String(s[s.index(s.startIndex, offsetBy: index)])
    } else {
        return String(s[s.index(s.startIndex, offsetBy: index)])
    }
}

print(solution("qwer"))
