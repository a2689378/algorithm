import Cocoa

var numArray: [Int] = [1, 9, 4, 0, 10]
var min: Int

for i in 0..<numArray.count {
    min = i
    for j in (i + 1)..<numArray.count {
        if(numArray[j] < numArray[min]) {
            min = j
        }
        
    }
    numArray.swapAt(min, i)
}
print(numArray)
