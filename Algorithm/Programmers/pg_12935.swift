//
//  pg_12935.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12935
//  제일 작은 수 제거하기

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let minArr = arr.min()
    let resultArr = arr.filter { $0 != minArr }
    return resultArr.isEmpty ? [-1] : resultArr
}
