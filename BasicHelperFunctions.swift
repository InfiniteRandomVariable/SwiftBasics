import Foundation
/*
 OBJECTIVE: Maintainable, Clean, Explicit Code
 */


/*
 Return 0.0 if the array is empty else
 Return average of the number in the form of double
*/
func average(_ table: [Double]) -> Double {
    guard table.isEmpty else{
        let sum: Double = table.reduce( 0.0, { result, current in
            result + current
        })
        return Double(sum/Double(table.count))
    }
    return 0.0
}

/*
 Return true if one of the args equals 1 or if their sum is equal to 1
 Issue: no optimization
 */
func valid(_ i:Int, _ j:Int) -> Bool{
    guard i == 1 || j == 1 else{
        return (i + j) == 1
    }
    return true
}

/*
 Index only position divisble by 2 or even number and check if this number is equal to value given.
 */
func isOnEvenPosition(_ table: [Int], _ value: Int) -> Bool {
    // Your code goes here
    for (index, v) in table.enumerated(){
        if index % 2 == 0 && v == value{
            return true
        }
    }
    return false
}
