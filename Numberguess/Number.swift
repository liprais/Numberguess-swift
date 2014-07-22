import Foundation

import UIKit

class Number
{
    var target:String = ""
    var guess:String = ""
    var history = [Int]()
    
    init() {
        self.target = self.generateNumberString()
    }
    

    
    func generateNumberString()->String {
        var ans:Array<Int> = []
        var result:String = ""
        while ans.count < 4 {
            var i = Int(arc4random()%10)
            if find(ans,i) {} else { ans.append(i) }
        }
        for each in ans {
            result = result + "\(each)"
        }
        return result
    }
    
    func compare(m:String,n:String)->String {
        var a = 0
        var b = 0
        for i in m {
            if find(n,i){
                if find(n,i) == find(m,i) { a += 1 }
                else { b += 1}
            }
        }
        return "\(a)A\(b)B"
    }
    
    func refresh() {
        self.target = self.generateNumberString()
    }
}