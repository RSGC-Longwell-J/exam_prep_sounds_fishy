
import Foundation
var fishHeights = [0, 0, 0, 0]
var output : String = ""
/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
for i in 0...3 {
    while fishHeights[i] == 0 {
        print("Reading \(i+1)? ", terminator: "")
        var input : String?
        input = readLine()
        if let notNilInput = input {
            if let inputAsInt = Int(notNilInput) {
                if inputAsInt > 0 {
                    fishHeights[i] = inputAsInt
                }
            }
        }
    }
}

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....
if fishHeights[0] > fishHeights[1] && fishHeights[1] > fishHeights[2] && fishHeights[2] > fishHeights[3] {
    output = "Fish Diving"
} else if fishHeights[3] > fishHeights[2] && fishHeights[2] > fishHeights[1] && fishHeights[1] > fishHeights[0] {
    output = "Fish Rising"
} else if  fishHeights[0] == fishHeights[1] && fishHeights[1] == fishHeights[2] && fishHeights[2] == fishHeights[3] {
    output = "Fish at Constant Depth"
} else {
    output = "No Fish"
}
/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
print(output)
