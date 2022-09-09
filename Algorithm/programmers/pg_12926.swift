//
//  pg_12926.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12926
//  시저 암호

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    for i in s.utf8 {
        switch i {
        case 65...90:
            result.append(String(UnicodeScalar((Int(i) + n - 65) % 26 + 65)!))
        case 97...122:
            result.append(String(UnicodeScalar((Int(i) + n - 97) % 26 + 97)!))
        default:
            result.append(" ")
        }
    }
    return result
}
