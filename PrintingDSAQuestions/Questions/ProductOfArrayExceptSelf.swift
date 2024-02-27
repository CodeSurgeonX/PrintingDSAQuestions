final class ProductOfArrayExceptSelf: Solution {
    func run() {
        func productExceptSelf(_ nums: [Int]) -> [Int] {
            guard nums.count > 1 else { return [] }
            
            var rightProduct = Array(repeating: 1, count: nums.count)
            for index in stride(from: nums.count - 2, through: 0, by: -1) {
                rightProduct[index] = nums[index + 1] * rightProduct[index + 1]
            }
            
            var result = [Int]()
            var left = 1 // This for keeping track of leftProduct, instead of making an array
            for index in nums.indices {
                result.append(left * rightProduct[index])
                left = left * nums[index]
            }
            return result
        }
        
        func productExceptSelfDivision(_ nums: [Int]) -> [Int] {
            var product = 1
            var isThereAZero = false
            for element in nums {
                if element != 0 {
                    product *= element
                } else {
                    isThereAZero = true
                }
            }
            var res = [Int]()
            for element in nums {
                if element == 0 {
                    res.append(product)
                } else {
                    if isThereAZero {
                        res.append(0)
                    } else {
                        res.append(product / element)
                    }
                }
            }
            return res
        }
    }
   
}
