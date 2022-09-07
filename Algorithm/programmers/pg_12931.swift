//
//  pg_12931.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12931
//  자릿수 더하기

import Foundation

func solution(_ n:Int) -> Int {
    return (String(n).compactMap{Int(String($0))}).reduce(0){$0+$1}
}
