//
//  1이 될 때까지(내 풀이).swift
//  Algorithm
//
//  Created by 황찬미 on 2022/10/03.
//

/*
 입력 조건 : N (2 <= N <= 100,000)과 K(2 <= K <= 100,000)가 공백으로 구분되며, 각각 자연수로 주어진다.
 입력으로 주어지는 N은 항상 K보다 크거나 같다.
 
 출력 조건 : 첫째 줄에 N이 1이 될 때까지 1번 혹은 2번의 과정을 수행해야 하는 횟수의 최솟값을 출력.
 
 1. 최대한 많이 나눈다, count += 1
 2. 그 다음 - 1을 반복, count += 1
 3. return count
 */

import Foundation

private func solution(_ n: Int, _ k: Int) -> Int {
    var n = n
    var count = 0
    
    while n >= k {
        if n % k == 0 {
            n = n / k
            count += 1
        } else {
            n = n - 1
            count += 1
        }
    }
    
    while n > 1 {
        n = n - 1
        count += 1
    }
    
    return count
}

print(solution(25, 5))
