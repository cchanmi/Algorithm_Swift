//
//  3-6(더 빠른 풀이).swift
//  Algorithm
//
//  Created by 황찬미 on 2022/10/03.
//

import Foundation

/*
 n이 큰 값이 왔을 때의 시간복잡도를 개선할 수 있는 코드
 k로 나누어 떨어지는 n과 가장 가까운 수인 변수 target을 생성
 n = target으로 n은 k로 나누어지는 값으로 만든다
 
 while 문을 빠져 나온 다음, n - 1을 count에 더하여 최종적으로 n을 1로 만들어 준다
 */

private func solution2(_ n: Int, _ k: Int) -> Int {
    var n = n
    var count = 0
    
    while n >= k {
        var target = (n / k) * k
        count += n - target
        n = target
        
        if n < k {
            break
        }
        
        n = n / k
        count += 1
    }
    
    count += n - 1
    return count
}

print(solution2(25, 5))
