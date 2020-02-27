//
//  Mortage.swift
//  Financial Tool
//
//  Created by Abdul Diallo on 2/26/20.
//  Copyright © 2020 Abdul Diallo. All rights reserved.
//

import Foundation

struct Mortage {
    
    let propertyPrice : Double //price of the property
    let downPayment : Double
    var mortage : Double {
    get {
        return propertyPrice-downPayment
        }
    }
    let rate : Double
    let frequency : Int
    let time : Int
    
    func amortization () -> String {
        let RoN = (rate/100.00)/Double(frequency)
        let num = mortage*RoN
        let den = 1.0-pow(1.0+RoN, -1.0*Double(time*frequency))
        return String(format: ".%2f", num/den)
    }
    
    func getMortage() -> Double {
        return mortage
    }
    
    
}
