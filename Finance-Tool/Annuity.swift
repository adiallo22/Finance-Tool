//
//  Annuity.swift
//  Financial Tool
//
//  Created by Abdul Diallo on 2/27/20.
//  Copyright © 2020 Abdul Diallo. All rights reserved.
//

import Foundation

struct Annuity {
    
    let principle : Double?
    let frequencyPerYear : Int
    let rate : Double
    var time : Int
    //var goal : Double?
    
    func futureValue() {
        
    }
    
    func paymentToBeMade(Goal : Double) -> Double {
        let RoN = rate/Double(frequencyPerYear)
        let num = Goal*RoN
        let den = pow(1.0+RoN, Double(frequencyPerYear*time))-1.0
        return num/den
    }
    
}
