// C323 - Lab 11 2/18/2020
// Team #12

// Team members:
// Jason Ryu    hyryu@iu.edu
// Jihoon Ban   jiban@iu.edu
// kaiju lyu    kaijlv@iu.edu


import Foundation

class GuessingGame {

    var randNum : Int
    var userNum : Int
    var count : Int
    
    
    init() {
        randNum = 0
        userNum = 0
        count = 0
    }
    
    func randRange(aMin: UInt32, aMax: UInt32) ->UInt32 {
        return aMin + arc4random_uniform(aMax - aMin + 1)
        
    }
    
    func compare(read : String){
        
         print("Please enter number: ")
         
            
            print("compare \(read) to \(randRange(aMin: 0,aMax: 10))")
        let convert = (read as NSString).intValue
            
            if (convert < randNum) {
                print("wrong, you number is higher than the answer")
                count += 1
            }
            
            else if (convert > randNum) {
                print("wrong, you number is lower than the answer")
                count += 1
            }
            
            else { // if it's equal
                print ("You got it!!")
            }

       
     

        
    } // func compare end

    var hhh = "123"

}

// test cases
var hhh = "123" // our input test case
var read = readLine()
let testing = GuessingGame()
print(testing.compare(read: hhh))





























