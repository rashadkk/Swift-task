var data = [0:"Zero", 1:"One", 2:"Two", 3:"Three",4:"Four", 5:"Five", 6:"Six",7:"Seven",8:"Eight",9:"Nine",10:"Ten",11:"Eleven",12:"Twelve",13:"Thirteen", 14:"Fourteen",15:"Fifteen", 16:"Sixteen",17:"Seventeen",18:"Eighteen",19:"Nineteen"]

func integerToString(intValue:Int)-> String {
    var res = ""
    var str = [String]()
    if intValue == 0 {
        return "Zero"
    }
    
    if intValue >= 1000 && intValue % 100 == 0 {
        var rem:Int
          str.insert(data[intValue/1000]! + " Thousand ", at: 0)
          rem = intValue % 1000
          if rem != 0{
            str.insert(data[rem/100]! + " Hundred", at: 1)
            
          }
        for strr in str{
            res += strr + " "
        }

        return res
    }
    
    
    if intValue >= 100 && intValue <= 900 && intValue % 100 == 0 {
        str.insert(data[intValue/100]! + " hundred", at: 0)
        return str[0]
    }

    
    var integer :Int = intValue
    var digitCount = 0
    while integer > 0 {
        let n:Int = integer%10
        digitCount += 1
        print(digitCount)
        if digitCount == 2{
            if n == 0 {
                str.insert("Not", at: 0)
            }
            else if n == 1{
                str.insert(data[intValue%100]!, at: 0)
                str.removeLast()
            }
            else{
                if n == 2 {
                    str.insert("Twenty", at: 0)
                }
                else if n==3 {
                    str.insert("Thirty", at: 0)
                }
                else if n==5 {
                    str.insert("Fifty", at: 0)
                }
                else{
                     str.insert(data[n]!+"ty", at: 0)
                }
                
            }
        }
        else if digitCount==3 {
            if n == 0 && str[0] == "Not" {
                str.removeFirst()
            }
        }
        else{
            if !(digitCount == 3 && n==0) && !(digitCount==4 && n==0)
           { str.insert(data[n]!, at: 0)}
        }

       integer = integer / 10

    }//while
    if intValue > 1000 && intValue < 10000{
        str.insert("Thousand", at: 1)
    }
    
    if intValue > 10000{
      str.insert(data[intValue/1000]! + " Thousand ", at: 0)
    }
    
    if str[str.count-1] == "Zero" && str[str.count-2] != "Zero"{
        str.removeLast()
    }
    for strr in str{
        res += strr + " "
    }
    res
    str
    return res
}

//work only till 10000 properly
integerToString(intValue:10001)

