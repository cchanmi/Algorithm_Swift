//
//  pg_12930.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12930
//  이상한 문자 만들기

import Foundation

func solution(_ s:String) -> String {
    var result = ""
    let array = s.components(separatedBy: " ")

    for i in 0..<array.count {
        for j in 0..<array[i].count {
            var index = array[i].index(array[i].startIndex, offsetBy: j)
            if j % 2 == 0 {
                result.append(array[i][index].uppercased())
            } else {
                result.append(array[i][index].lowercased())
            }
        }
        result.append(" ")
    }
    
    result.removeLast()
    return result
}
