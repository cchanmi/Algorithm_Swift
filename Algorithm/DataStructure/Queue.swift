//
//  Queue.swift
//  Algorithm
//
//  Created by 황찬미 on 2022/09/25.
//

/* - double array queue
 1. 두 개의 배열 생성
 2. Queue의 count
 3. Queue가 비었는지, 아닌지
 4. Queue의 head에 있는 값 출력
 5. Enqueue 구현
 6. Dequeue 구현
 */

import Foundation

struct Queue<T> {
    private var input: [T] = []
    private var output: [T] = []
    
    public var count: Int? {
        return output.count + input.count
    }
    
    public var isEmpty: Bool {
        return output.isEmpty && input.isEmpty
    }
    
    public var peek: T? {
        return output.isEmpty ? input.first : output.last
    }
    
    public mutating func enqueue(_ element: T) {
        input.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        return output.popLast()
    }
}

var queue = Queue<Int>()

queue.enqueue(3)    // [3]
queue.enqueue(4)    // [3, 4]
queue.enqueue(5)    // [3, 4, 5]
queue.dequeue()     // [4, 5]
queue.dequeue()     // [5]
queue.count         // 1
queue.isEmpty       //false
queue.peek          // 5
