import UIKit


func quickSort(data: [Int]) -> [Int] {
    if data.count <= 1 {
        return data
    }
    
    var leftArr: [Int] = []
    var rightArr: [Int] = []
    let pivot: Int = data[data.count - 1]
    for index in 0..<data.count - 1 {
        if data[index] < pivot {
            leftArr.append(data[index])
        } else {
            rightArr.append(data[index])
        }
    }
    
    var result = quickSort(data: leftArr)
    result.append(pivot)
    let resultRight = quickSort(data: rightArr)
    result.append(contentsOf: resultRight)
    return result
}

let data:[Int] = [1,2,3,2,4,8,9,10,19,0]
let result = quickSort(data: data)
