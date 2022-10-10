//
//  모험가 길드.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/10/09.
//

/*
 오름차순으로 정렬을 한 후,
 반복문을 돌릴 때마다 사람 수를 +1을 해 주고, 그것이 공포도와 값이 같을 경우
 groun += 1, 사람수는 0으로 초기화
 */

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted() // 1 2 2 2 3
var num = 0   // 사람 수
var group = 0 // 그룹 수

for i in input {
    num += 1
    
    if i == num {
        num = 0
        group += 1
    }
}

print(group)    // 2

