//
//  Stack.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/09/23.
//

/*
 1. 배열 생성 (Zeneric 타입)
 2. stack의 count
 3. stack이 비었는지, 아닌지
 4. stack의 최상단 값
 5. push 구현
 6. pop 구현
 */

import Foundation

struct Stack<T> {
    private var elements: [T] = []
    
    public var count: Int? {
        return elements.count
    }
    
    public var isEmpty: Bool {
        return elements.isEmpty
    }
    
    public var peek: T? {
        return elements.last
    }
    
    public mutating func push(_ element: T) {
        elements.append(element)
    }
    
    public mutating func pop() -> T? {
        return elements.popLast()
    }
}

var stack = Stack<Int>()

stack.push(3)           // [3]
stack.push(5)           // [3, 5]
stack.push(10)          // [3, 5, 10]
stack.pop()             // [3, 5]
print(stack.count)      // 2
print(stack.isEmpty)    // false
print(stack.top()!)     // 5
