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
            for row in 0..<matrix.count {
                if value >= matrix[row][0] && value <= matrix[row][matrix[row].count - 1] {
                    // This is the row which should contain our element
                    let columnIndex = binarySearch(matrix[row], value)
                    if columnIndex >= 0 {
                        print("Found element at index \(row), \(columnIndex)")
                        return
                    }
                }
            }
            print("Not found")
        }
        
        func searchInFlattenedMatrix(matrix: [[Int]], value: Int) {
            let numberOfRows = matrix.count
            let numberOfColumns = matrix[0].count
            var left = 0
            var right = (numberOfRows * numberOfColumns) - 1
            
            while left <= right {
                let mid = left + (right - left)/2
                // Only this part differs when compared to plain binary search because we are using math to flatten the array
                if matrix[mid/numberOfColumns][mid%numberOfColumns] == value {
                    print("Found number at index \(mid/numberOfColumns) \(mid%numberOfColumns)")
                    return
                } else if matrix[mid/numberOfColumns][mid%numberOfColumns] < value {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        
        //MARK: Helper
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
        
        searchInFlattenedMatrix(matrix: [[1, 3, 7], [12, 21, 23], [54, 55, 70] ], value: 7) //0,2
    }
}
