//
//  12901.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/92334
//  2016년

import Foundation

func solution(_ a: Int, _ b: Int) -> String {
    let array = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    var totalDays = 0
    
    for i in 1..<a {
        var monthDays = 0
        switch i {
        case 1, 3, 5, 7, 8, 10, 12:
            monthDays += 31
        case 2:
            monthDays += 29
        default:
            monthDays += 30
        }
        totalDays += monthDays
    }
    
    totalDays += b

    return array[totalDays % 7]
}
