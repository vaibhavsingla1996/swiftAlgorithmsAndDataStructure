// Insertion Sort
// Sorting is arranging a collection in particular order
// In insertion sort we take one element, compare it and swap(if necessary) with the pervious element depending upon the order of the sorting. Untill we find the right place for that item we keep going to previous elements and oif we get to the first element we place it there.
// Insertion sort can be done via two types.
// First is creating a new array and taking single value at a time from orignal array and placing it at right position in the new array. And return the new array
// Second Type is little tricky as we donot create a new array we just reposition the elements via same swapping untill we place every element in the right place
// This was basic theory of Insertion sort. Now we shall start doing our hands dirty via implementing both methods starting with Int array type and order it in ascending.
// At last we will try to make a generic method for all types of array with the order specified by the user.

import UIKit

func insertionSortViaMakingNewCopy(_ value: [Int]) -> [Int] {
    let copyArray = value
    for index in 1..<copyArray.count {
        print(index)
    }
    print("out")
    return copyArray
}

debugPrint(insertionSortViaMakingNewCopy([1,24,4]))


