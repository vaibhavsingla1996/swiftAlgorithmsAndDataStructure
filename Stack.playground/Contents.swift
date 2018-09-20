//: Playground - noun: a place where people can play

import UIKit

// This is a Stack Data strcuture.
// Stack follows Last In First Out order(LIFO).
// Just like we see a stack of plates in wedding. the Last plate is the one gets to pick first.
// So lets get started to make a stack Data structure

public struct Stack<T> {
    
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ value: T) {
        array.append(value)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T?{
        return array.last
    }
}

var stack = Stack<Int>()

// removing value from the empty stack should return error, but due to optional chaining we avoid the error and it returns nil
stack.pop()       // nil

// Insertng new value in empty stack
stack.push(8)     // [8]
stack.push(12)    // [8, 12]

// as you can see now it will pop the top most value i.e 12
stack.pop()       // 12

print(String(describing: stack.top))  // optional(8)

stack.push(16)      // [8, 16]

stack.pop()         // 16
