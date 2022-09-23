//
//  pg_77884.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/77884
//  약수의 개수와 덧셈

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0

    for i in left...right {
        let number = (1...i).filter{i % $0 == 0}.count
        result += number % 2 == 0 ? i : -i
    }

    return result
}

print(solution(13, 17))

/*
 226.74ms / 16.2MB
 */
