import UIKit

func quickSort(data:[Int])->[Int]{
     if data.count<=1 {
         return data
     }
     
     var left:[Int] = []
     var right:[Int] = []
     let pivot:Int = data[data.count-1]
     for index in 0..<data.count-1 {
         if data[index] < pivot {
             left.append(data[index])
         }else{
             right.append(data[index])
         }
     }
     
     var result = quickSort(data: left)
     result.append(pivot)
     let rightResult = quickSort(data: right)
     result.append(contentsOf: rightResult)
     return result
 }

let data:[Int] = [1,2,3,2,4,8,9,10,19,0]
let result = quickSort(data: data)
