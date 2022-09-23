//
//  pg_12944.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12944
//  평균 구하기

import Foundation

func solution(_ arr:[Int]) -> Double {
    let sum = arr.reduce(0, {$0 + $1})
    return (Double(sum) / Double(arr.count))
}
