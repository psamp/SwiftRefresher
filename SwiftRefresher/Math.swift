//
//  Sort.swift
//  SwiftRefresher
//
//  Created by Princess Sampson on 9/20/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import Foundation

/** Find product of Int array values.
 - Return Product of all array values
 */
public func productOf(_ numbers: [Int]) -> Int {
    var product = 1
    
    for num in numbers {
        product *= num
    }
    
    return product
}
