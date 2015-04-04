//
//  PersonWithStrongRefCC.swift
//  Class2ArcExamples
//
//  Created by prenez on 4/4/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import Foundation

//
//  Person.swift
//  Class2ArcExamples
//
//  Created by Michael Prenez-Isbell on 4/2/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import UIKit

class CustomerWithStrongRef {
    
    
    // strong ref to credit card
    var creditCard: CreditCardWithUnownedRef?
    
    
 
    
    init() {
        

        creditCard = nil
        
    }
    
}

