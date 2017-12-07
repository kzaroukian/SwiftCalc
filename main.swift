

//enum divideByZeroError : Error {
//    case dividendIsZero(reason: String)
// }

class calculator{
    var hold = 0
    
    func add(a: Int, b: Int) -> Int{
        var sum = a + b
        return sum
    }
    func subtract(a: Int, b: Int) -> Int{
        var diff = a - b
        return diff
    }
    func multiply(a: Int, b:Int) -> Int{
        var product = a * b
        return product
    }
    // removed throws
    func divide(a: Int, b: Int) -> Int{
        if(b != 0){
            var quotient = a/b
            return quotient
        }
            else{
                print("Cannot divide by 0")
                //let reason1 = "Cannot divide by 0"
               // throw divideByZeroError.dividendIsZero(reason: reason1)
            }
        return 0
        }
    func exponent(a: Int, b: Int) ->  Int{
        var i = 0
        var ans: Int
        ans = 1
        while(i < b){
            ans *= a
            i += 1
        }
        return ans
        }
  
    
    func main(){
        print("Welcome to calculator")
        
        var input = String? (readLine()!)
      
        while(input != "exit"){
        
            print("Enter in first number")
            input = readLine()
            print("Enter in operator")
            var input2 = readLine()
            print("Enter in second number")
            
            var input3 = String? (readLine()!)
            
            if(input2 == "+"){
                var first = Int(input!)
                var second = Int(input3!)
                hold += add(a: first!, b: second!)
                print(hold)
            }
            
            if(input2 == "-"){
                var first = Int(input!)
                var second = Int(input3!)
                hold += subtract(a: first!, b: second!)
                print(hold)
            }
            
            if(input2 == "*"){
                var first = Int(input!)
                var second = Int(input3!)
                hold += multiply(a: first!, b: second!)
                print(hold)
            
            }
            
            if(input2 == "/"){
                var first = Int(input!)
                var second = Int(input3!)
                hold += divide(a: first!, b: second!)
                print(hold)
            }
            if(input2 == "^"){
                var first = Int(input!)
                var second = Int(input3!)
                hold += exponent(a: first!, b: second!)
                print(hold)
            }
            
        }
        
    }
}
