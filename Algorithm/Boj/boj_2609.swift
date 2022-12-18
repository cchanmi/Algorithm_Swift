//
//  boj_2609.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/12/18.
//  최대공약수와 최소공배수
//  https://www.acmicpc.net/problem/2609

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    let c = a % b
    return c == 0 ? min(a, b) : gcd(b, c)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}

let input = readLine()!.split(separator: " ").map{ Int($0)! }

print(gcd(input[0], input[1]))
print(lcm(input[0], input[1]))

/*
 메모리 : 79512 KB / 시간 : 12 ms
 */
