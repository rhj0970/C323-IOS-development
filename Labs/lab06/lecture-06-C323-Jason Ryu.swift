// C323 Mobile App Development - Jason Ryu Spring 2020
//
//  examples in the Swift programming language
//
//  Note: the following Swift code will run correctly
//        from swift command-line
//

import Foundation     // for random numbers with arc4random_uniform()



// method returning a positive integer, within bounds:
//
func randRange (aMin: UInt32 , aMax: UInt32) -> UInt32 {
    return aMin + arc4random_uniform(aMax - aMin + 1)
}



// example for getting user input from command-line,
//    using the readLine() method, which exists from Swift 2 onward:
let answer = arc4random_uniform(50)
var tried  = 0


while answer > 0 {
    print("number of tries done : \(tried) . Please enter an integer:")
    var myText = readLine()!
    var number = Int(myText)!
    
    if(answer > number) {
        print("Wrong, your number is lower than the answer")
    }
    
    if (answer < number) {
        print("Wrong, your number is higher than the answer ")
    }
   
    tried += 1
    
}

print ("The answer is : \(answer)")



//for i in 0...10 {
 //   print("At iteration \(i) of the for loop. Please enter an integer:")
//var myText = readLine()!
 //   print("comparing \(myText) to \(randRange(aMin: 0,aMax: 10))")
 //   var integ = Int(myText)
 //   print ("the integer version of your input is: \(integ)")
 //   print ("the integer non-optional version of your input is: \(integ!)")
//}




// example defining a dictionary in Swift:
//

var myDictionary = [0: true,
                    false: "hello",
                    "three": "four"] as [AnyHashable : Any]

print (myDictionary.description)
