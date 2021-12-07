//
//  ViewController.swift
//  二分法
//
//  Created by 何常凱 on 2021/12/5.
//

import UIKit

let testArray: [Int] = [1, 3, 5, 7, 9, 11]

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        print(findItem(testNum: 11))
    }
    
    //输入一个整数，输出数组对应下标，无对应整数返回-1 前提：数组顺序排列
    func findItem(testNum: Int) -> Int {
        var low = 0;
        var high = testArray.count - 1
        var mid: Int
        var item: Int = -1
        
        while low <= high {
            mid = (low + high) / 2
            if testArray[mid] == testNum {
                item = mid
                break;
            } else if testArray[mid] > testNum {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return item
    }


}

