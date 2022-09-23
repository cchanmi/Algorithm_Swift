//
//  pg_12916.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12916
//  문자열 내 p와 y의 개수

//import Foundation
//
//func solution(_ s:String) -> Bool {
//    var pCount = 0
//    var yCount = 0
//
//    for i in s {
//        if i == "p" || i == "P" {
//            pCount += 1
//        } else if i == "y" || i == "Y" {
//            yCount += 1
//        }
//    }
//
//    return (pCount == yCount) ? true : false
//}

/*
 0.01ms / 16.4 MB
 */

import Foundation

func solution(_ s:String) -> Bool {
    let s = s.lowercased()
    return (s.filter{ $0 == "p" }.count) == (s.filter { $0 == "y" }.count)
}

/*
 0.05ms / 16.3 MB
 */
