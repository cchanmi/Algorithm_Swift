//
//  pg_87389.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/87389
//  나머지가 1이 되는 수 찾기

import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{ n % $0 == 1 }.min()!
}

/*
  0.11ms / 16.5MB ~ 487.44ms / 16.5MB
 */
