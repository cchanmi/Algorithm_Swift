//
//  pg_12915.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12915
//  문자열 내 마음대로 정렬하기

func solution(_ strings:[String], _ n:Int) -> [String] {
    let index = strings[0].index(strings[0].startIndex, offsetBy: n)
    
    return strings.sorted { first, second in
        if first[index] == second[index] {
            return first < second
        } else {
            return first[index] < second[index]
        }
    }
}


/*
  0.1ms / 16.6MB
 */
