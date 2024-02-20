//
//  SeachingInSorted2DMatrix.swift
//  PrintingDSAQuestions
//
//  Created by Shashwat Kashyap on 20/02/24.
//

import Foundation

struct SeachingInSorted2DMatrixBinarySearchWay: Solution {
    func run() {
        
        
        func search(matrix: [[Int]], value: Int) {
            
        }
        
        
        func binarySearch(_ nums: [Int], _ target: Int) -> Int {
            var left = 0
            var right = nums.count - 1

            while left <= right {
                let mid = left + (right - left)/2
                if nums[mid] == target {
                    return mid
                } else if nums[mid] < target {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
            return -1
        }
        
        
    }
}
