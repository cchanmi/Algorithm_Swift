//
//  pg_42840.swift
//  Algorithm
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/42840
//  모의고사

/*
 1, 2, 3번 수포자 값 넣기
 딕셔너리 타입을 이용해 1, 2, 3번 수포자(key)에 0 값 대입 (value)
 answers의 값과 같은지 확인
 같을 경우 1, 2, 3번 수포자에 1 추가
 */

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let firstPerson = [1, 2, 3, 4, 5]
    let secondPerson = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPerson = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var dict: [Int: Int] = [1: 0, 2: 0, 3: 0]
    
    for (index, number) in answers.enumerated() {
        dict[1]! += number == firstPerson[index % firstPerson.count] ? 1 : 0
        dict[2]! += number == secondPerson[index % secondPerson.count] ? 1 : 0
        dict[3]! += number == thirdPerson[index % thirdPerson.count] ? 1 : 0
    }
    
    /*
     dict에서 value가 가장 큰 값을 찾는다.
     가장 큰 값이 여러 개인 경우 sorted
     */

    return dict.filter { $0.value == dict.values.max()! }.keys.sorted()
}

print(solution([1,3,2,4,2]))

/*
 0.17ms, 16.6MB
 */
