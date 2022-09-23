//
//  pg_12932.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12932
//  자연수 뒤집어 배열로 만들기

import Foundation

func solution(_ n:Int64) -> [Int] {
    return (String(n).reversed()).map{Int(String($0))!}
}
