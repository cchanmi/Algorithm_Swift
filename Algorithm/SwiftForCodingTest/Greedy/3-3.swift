//
//  숫자 카드 게임.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/10/09.
//

/*
 0으로 연속된 블록과 1로 연속된 블록의 개수를 찾고,
 더 작은 개수를 출력
 
 첫번째값을 초기값으로 시작한다
 */
import Foundation

private func solution() -> Int {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let n = input[0]
    var result = 0
    
    for i in 0..<n {
        var input = readLine()!.split(separator: " ").map{Int($0)!}
        let minNum = input.min()!
        result = max(minNum, result)
    }
    return result
}

print(solution())
