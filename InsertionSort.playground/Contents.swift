// Insertion Sort
// Sorting is arranging a collection in particular order.
// In insertion sort, we take element one by one and compare it and swap(if necessary) with the pervious element depending upon the order of the sorting. Untill we find the right place for that item we keep going to previous elements and if we get to the first element we place it there.
// Insertion sort can be done via two types.
// First is creating a new array and taking single value at a time from orignal array and placing it at right position via swapping in the new array. And return the new array
// Second Type is little tricky as we just reposition the elements via shifting  untill we place every element in the right place
// This was basic theory of Insertion sort. Now we shall start doing our hands dirty via implementing both methods starting with Int array type and order it in ascending.
// At last we will try to make a generic method for all types of array with the order specified by the user.

import UIKit
import Foundation

func insertionSortViaSwapping(_ value: [Int]) -> [Int] {
    var copyArray = value
    for i in 1..<copyArray.count {
        var index = i
        while index > 0 && copyArray[index] < copyArray[index-1] {
            copyArray.swapAt(index, index-1)
            index -= 1
        }
    }
    return copyArray
}

debugPrint(insertionSortViaSwapping([1,24,4,6,2]))

func insertionSortViaShifting(_ value: [Int]) -> [Int] {
    var copyArray = value
    for i in 1..<copyArray.count {
        var index = i
        let temp = copyArray[index]
        while index > 0 && temp < copyArray[index-1] {
            copyArray[index] = copyArray[index-1]
            index -= 1
        }
        copyArray[index] = temp
    }
    return copyArray
}
debugPrint(insertionSortViaShifting([1,24,4,6,2]))


// difference between Swapping and Shifting is swapping takes more time and memory there fore shifting is best
// now we will try to make the shifting one genericType and order independent.

func insertionSortGenericType<T>(_ value: [T], _ isOrderedBefore: (T , T) -> Bool) -> [T] {
    var copyArray = value
    for i in 1..<copyArray.count {
        var index = i
        let temp = copyArray[index]
        while index > 0 && isOrderedBefore(temp, copyArray[index-1]) {
            copyArray[index] = copyArray[index-1]
            index -= 1
        }
        copyArray[index] = temp
    }
    return copyArray
}
debugPrint(insertionSortGenericType([1,5,10,3,7], <))
debugPrint(insertionSortGenericType([1,5,10,3,7]) { (a, b) -> Bool in
    return a < b
})
debugPrint(insertionSortGenericType([1,5,10,3,7]) { $0<$1 })
