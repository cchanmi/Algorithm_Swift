//
//  문자열 재정렬.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/10/16.
//

import Foundation

private func solution(_ S: String) -> String {
    var S = S.sorted()
    var string = ""
    var sum = 0
    
    for i in S {
        if i.isNumber == true {
            sum += Int(String(i))!
            print(i)
        } else {
            string += String(i)
        }
    }
    return string + String(sum)
}

print(solution("K1KA5CB7"))
