//
//  Coumpound Interest.swift
//  Financial Tool
//
//  Created by Abdul Diallo on 2/26/20.
//  Copyright © 2020 Abdul Diallo. All rights reserved.
//

import Foundation

struct SimpleInterest {
    
     let presentValue, rate, time : Double
     let futureValue : Double?
     var frequency : Double?
    
    init(presentValue: Double, rate: Double, time: Double) {
        self.presentValue = presentValue
        self.rate = rate
        self.time = time
        futureValue = 0.0
        frequency = 0.0
    }
    
    func interestAccumulated() -> Double {
        return presentValue*(rate/100.0)*time
    }
    
    func futureValueWithSimpleInterest() -> Double {
        return presentValue + interestAccumulated()
    }
    
    mutating func futureValueWithCompoundInterest(frequency: Double) -> Double {
        self.frequency = frequency
        let RoN = pow(1.0+((rate/100.0)/frequency), time*frequency)
        return presentValue*RoN
    }
    
}
