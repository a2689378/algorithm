import UIKit
import Foundation

let dictionary: Dictionary<String, Array<String>> = [
    "you": ["alice", "bob", "claire"],
    "bob": ["anuj", "peggy"],
    "alice": ["peggy"],
    "claire": ["thom", "jonny"],
    "anuj": [],
    "peggy": [],
    "thom": [],
    "jonny": []
]

var searchArray: [String] = dictionary["you"]!
//这个数组用于记录检查过的人
var searched: [String] = []
var isYou: String = ""

while(searchArray.count > 0) {
    let person: String = searchArray[0]
    //仅当这个人没检查过时才检查
    if !searched.contains(person) {
        //检查朋友圈名字带th的
        if person.range(of: "th") != nil {
            isYou = person
            break
        } else {
            if let nameArray = dictionary[person], nameArray.count > 0 {
                searchArray.append(contentsOf: nameArray)
            }
            //将这个人标记为检查过
            searched.append(person)
        }
    }
    searchArray.remove(at: 0)
}
print(isYou)




