//
//  큰 수의 법칙(내 풀이).swift
//  Algorithm
//
//  Created by 황찬미 on 2022/10/04.
//

/*
 입력 조건: 첫째줄에 N(2 <= N <= 1,000), M(1 <= M <= 10,000), K(1 <= K <= 10,000)의 자연수가 주어지고, 공백으로 구분한다.
          둘째줄에 N개의 자연수가 주어진다. 각각의 자연수는 1 이상 10,000 이하의 수로 주어진다.
          입력으로 주어지는 K는 항상 M보다 작거나 같다.
          배열의 크기 N, 숫자가 더해지는 횟수 M, 그리고 K가 주어질 때.
 
 출력 조건 : 첫째줄의 큰수의 법칙에 따라 더해진 답을 출력한다.
 */

/*
 먼저 큰수를 기준으로 정렬하고, 첫번째 큰수를 K번만큼 큰수를 더한다.
 두 번째 큰수를 한 번 더하고, 다시 첫 번째 큰수를 K번만큼 더한다.
 이것을 M번만큼 반복.
 */

import Foundation

let input = readLine()!.split(separator: " ").compactMap{Int($0)}
var array = readLine()!.split(separator: " ").compactMap{Int($0)}.sorted(by: >)
let n = input[0]
var m = input[1]
let k = input[2]
var result = 0

while true {
    for _ in 0..<k {
        if m == 0 {
            break
        } else {
            result += array[0]
            m -= 1
        }
    }
    if m == 0 {
        break
    } else {
        result += array[1]
        m -= 1
    }
}

print(result)




