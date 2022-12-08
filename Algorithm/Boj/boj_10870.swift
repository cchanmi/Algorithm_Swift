//
//  boj_10870.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/12/05.
//  피보나치 수 5

import Foundation

let input = Int(readLine()!)!

func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    }
    
    return fibonacci(n-1) + fibonacci(n-2)
}

print(fibonacci(input))

/*
 79508 KB / 12 ms
 */
