//
//  Sort.swift
//  SwiftRefresher
//
//  Created by Princess Sampson on 9/20/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import Foundation

public func productsDiff(of numbers:[Int]) -> [Int] {
    var returned = [Int]()
    
    for index in numbers.indices {
        var numbersMutableCopy = numbers
        numbersMutableCopy.remove(at: index)
        
        let productOfOtherIndexValues = productOf(numbersMutableCopy)
        returned.insert(productOfOtherIndexValues, at: index)
    }
    
    return returned
}
