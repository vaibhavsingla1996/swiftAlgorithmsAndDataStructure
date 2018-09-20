
// This is a Queue Data strcuture.
// Queue follows First In First Out order(FIFO).
// Just like we see queue of anything(like movie tickets etc). First on gets to take off first.
// So lets get started to make a queue data structure


import UIKit

public struct Queue<T> {
    
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    // This property will return optional as it can be nil if the queue is empty
    public var front: T? {
        return array.first
    }
    
    public mutating func enqueue(_ value: T) {
        array.append(value)
    }
    
    // dequeue will return optional as it can be nil if the queue is empty
    public mutating func dequeue() -> T? {
        if self.isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}


// Now here we will try it out
var queue = Queue<Int>()

// inserting a value
queue.enqueue(5)
queue.enqueue(15)

// removing a value returns a optional value as it can be nil if empty
print(String(describing: queue.dequeue()))      // optional(5)

queue.enqueue(25)
queue.enqueue(35)

// checking who stands on front
print(String(describing: queue.front)) // optional(15)

// checking current count in queue
print(String(describing: queue.count))

// checking all the value in the queue
debugPrint(queue.array)


