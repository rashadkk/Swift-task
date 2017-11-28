
    
var data = [0:"",1:"One",2:"Two",3:"Three", 4:"Four",5:"Five", 6:"Six",7:"Seven",8:"Eight",9:"Nine",10:"Ten",11:"Eleven",12:"Twelve", 13:"Thirteen",14:"Fourteen", 15:"Fifteen",  16:"Sixteen",17:"Seventeen",18:"Eighteen", 19:"Nineteen"]
var tens = [2:"Twenty",3:"Thirty",4:"Fourty",5:"Fifty",6:"Sixty",7:"Seventy",8:"Eighty",9:"Ninety"]

    
    func toWord(_ integer:Int)->String{
        if integer < 20{
            return data[integer]!
        }
        if integer < 100 {
            let div = integer/10
            return tens[div]! + (integer / 10 != 0 ? " " : "") + toWord(integer%10)
        }
        if integer < 1000 {
            return data[integer/100]! + " Hundred" + (integer / 100 != 0 ? " " : "") + toWord(integer%100)
        }
        if integer < 100000 {
            return toWord(integer/1000) + " Thousand" + (integer / 1000 != 0 ? " " : "") + toWord(integer%1000)
        }
        if integer < 10000000{
            return toWord(integer/100000) + " Lack" + (integer / 100000 != 0 ? " " : "") + toWord(integer%100000)
        }
        return  toWord(integer/10000000) + " Crore" + (integer / 10000000 != 0 ? " " : "") + toWord(integer%10000000)
    }


toWord(956478)
