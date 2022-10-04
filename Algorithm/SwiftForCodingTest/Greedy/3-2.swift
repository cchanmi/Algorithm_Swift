//
//  큰 수의 법칙 (더 빠른 풀이).swift
//  Algorithm
//
//  Created by 황찬미 on 2022/10/04.
//

/*
 주어진 수가 커질 때를 보완한 빠른 풀이 방식
 반복되는 수열에 대해 파악한다. -> [6, 6, 6, 5] = k + 1개가 반복됨을 알 수 있다.
 (M / k+1) * k는 가장 큰수가 등장하는 횟수이다
 
 그렇다면, M이 k+1개로 나누어질 경우, 그 몫이 반복 횟수가 된다.
 하지만 M이 K+1로 나누어 떨어지지 않을 경우, 그 나머지 만큼의 큰 수를 더해 주어야 한다.
 이를 바탕으로 구현해 보자.
 */

import Foundation

let input = readLine()!.split(separator: " ").compactMap{Int($0)}
var array = readLine()!.split(separator: " ").compactMap{Int($0)}.sorted(by: >)
let m = input[1]
let k = input[2]
var result = 0
var count = 0

count = m / (k+1) * k
count += m % (k+1)

result += count * array[0]
result += (m - count) * array[1]

print(result)


