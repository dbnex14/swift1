let swiftTeam = 13
let IOSTeam = 54
let otherTeams = 48
var totalTeam = swiftTeam + IOSTeam + otherTeams
totalTeam += 1

let priceInferred = 19.99
let priceExplicit: Double = 19.99

let onSaleInferred = true
let onSaleExplicit: Bool = false

let nameInferred = "Dino Buljubasic"
let nameExplicit: String = "Dino Buljubasic"

if !onSaleInferred {
    print("\(nameInferred) on sale for \(priceInferred)!")
} else {
    print("\(nameInferred) on regular price: \(priceInferred)!")
}

// 
// Classes 
//
// 1
class TipCalculator {
    //2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    // 3
    init(total: Double, taxPct: Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    /*
    // 5
    func printPossibleTips(){
        let possibleTipsInferred = [0.10, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        for possibleTip in possibleTipsInferred{
            print("\(possibleTip * 100)%: \(calcTipWithPct(possibleTip))")
        }
        //print("15%: \(calcTipWithPct(0.15))")
        //print("18%: \(calcTipWithPct(0.18))")
        //print("20%: \(calcTipWithPct(0.20))")
    }
    
    func printPossibleTips2(){
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20]
        
        for x in 0..<possibleTipsInferred.count{
            let possibleTip = possibleTipsInferred[x]
            print("\(possibleTip*100)%: \(calcTipWithPct(possibleTip))")
        }
    }
    */
    
    // 1
    func returnPossibleTips() -> [Int: Double]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithPct(possibleTip)
        }
        
        return retval
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
//tipCalc.printPossibleTips()
//tipCalc.printPossibleTips2()
tipCalc.returnPossibleTips()






