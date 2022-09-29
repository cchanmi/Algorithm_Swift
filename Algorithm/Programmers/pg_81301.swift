//
//  pg_81301.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/81301
//  숫자 문자열과 영단어

/*
 숫자일 때는 건너뛰고...
 영어일 때, 3글자, 4글자, 5글자로 나눈다
 */

import Foundation

func solution(_ s:String) -> Int {
    var word = s
    
    word = word.replacingOccurrences(of: "zero", with: "0")
    word = word.replacingOccurrences(of: "one", with: "1")
    word = word.replacingOccurrences(of: "two", with: "2")
    word = word.replacingOccurrences(of: "three", with: "3")
    word = word.replacingOccurrences(of: "four", with: "4")
    word = word.replacingOccurrences(of: "five", with: "5")
    word = word.replacingOccurrences(of: "six", with: "6")
    word = word.replacingOccurrences(of: "seven", with: "7")
    word = word.replacingOccurrences(of: "eight", with: "8")
    word = word.replacingOccurrences(of: "nine", with: "9")
    
    return Int(word)!
}

print(solution("23four5six7"))

/*
 0.17ms, 16.2MB
 */
