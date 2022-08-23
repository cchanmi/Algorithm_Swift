//
//  pg_12948.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12948
//  핸드폰 번호 가리기

import Foundation

func solution(_ phone_number:String) -> String {
    var result = ""
    
    for i in 0..<phone_number.count - 4 {
        result += "*"
    }
    
    result += phone_number.suffix(4)
    
    return result
}
