//
//  SliderSetup.swift
//  SliderGram
//
//  Created by Jorge Mendoza on 6/10/18.
//  Copyright © 2018 Jorge Mendoza. All rights reserved.
//

import Foundation
import UIKit

enum verticalSize:Float {
    
    case ten = 10.0
    case fifteen = 15.0
    case twenty = 20.0
    case twentyFive = 25.0
    case thirty = 30.0
    case thirtyFive = 35.0
    case forty = 40.0
    case fortyFive = 45.0
    case fifty = 50.0
    case fiftyFive = 55.0
    case sixty = 60.0
    case sixtyFive = 65.0
    case seventy = 70.0
    case seventyFive = 75.0
    case eighty = 80.0
    case eightyFive = 85.0
    case ninety = 90.0
    case ninetyFive = 95.0
    case hundred = 100.0
    //case custom(Float)
}

struct SliderSetup {
    
    let horizontalPadding:Float?
    let verticalPadding:Float?
    let topOffset:Float?
    let bottomOffset:Float?
    let verticalSize:verticalSize?
    let innerTopOffset:Float?
    let innerBottomOffset:Float?
    let innerPaddingOffset:Float?
    let imageAspect:UIViewContentMode?
    var backgroundColor:UIColor? = nil
    
    mutating func setBackgroundColor(color:UIColor){
        self.backgroundColor = color
    }
}
