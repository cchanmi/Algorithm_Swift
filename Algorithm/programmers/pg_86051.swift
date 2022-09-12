//
//  pg_86051.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/86051
//  없는 숫자 더하기

import Foundation

func solution(_ numbers:[Int]) -> Int {
    return 45 - numbers.reduce(0){$0 + $1}
}

/*
  0.02ms /16.1MB
 */

