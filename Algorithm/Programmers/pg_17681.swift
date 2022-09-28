//
//  pg_17681.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/17681
//  [1차] 비밀지도

/*
 1. 주어진 숫자를 2진수로 변경(타입은 문자열)
 2. 빈 배열을 생성 후, arr1, arr2의 각각 string.index에 접근해 둘 다 0이면 " " 추가, 아니면 "#" 추가
 */

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answers: [String] = []
    var result: [String] = []
    
    for i in 0...arr1.count - 1 {
        answers.append(String(arr1[i] | arr2[i], radix: 2))
    }
    
    for answer in answers {
        var string = ""
        
        if answer.count != n {
            for _ in 0...n - answer.count - 1 {
                string += " "
            }
        }
        
        for j in answer {
            string += j == "1" ? "#" : " "
        }
        
        result.append(string)
    }
    
    return result
}

print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))

/*
 0.08ms, 16.3MB
 */
