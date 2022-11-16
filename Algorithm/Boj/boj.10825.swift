//
//  bj_10825.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/11/14.
//

import Foundation

struct Info {
    var name: String
    var korean: Int
    var english: Int
    var math: Int
}

let number = Int(readLine()!)!
var studentInfoList = [Info]()

for _ in 0..<number {
    let input = readLine()!.split(separator: " ")
    studentInfoList.append(Info(name: String(input[0]), korean: Int(input[1])!, english: Int(input[2])!, math: Int(input[3])!))
}

studentInfoList.sort() {
    $0.korean == $1.korean ?
    ($0.english == $1.english ?
     ($0.math == $1.math ?
      $0.name < $1.name :
        $0.math > $1.math) :
     $0.english < $1.english) :
    $0.korean > $1.korean
}

for i in studentInfoList {
    print(i.name)
}
