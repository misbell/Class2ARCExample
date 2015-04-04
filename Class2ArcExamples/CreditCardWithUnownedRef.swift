//
//  CreditCard.swift
//  Class2ArcExamples
//
//  Created by Michael Prenez-Isbell on 4/2/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import UIKit

class UnownedCreditCard  {
    
    // can never be nil, so non-optional
    unowned var person: PersonWithStrongRef
    

    init (aPerson: PersonWithStrongRef) {
        person = aPerson
        
    }
    
    init() {
        
        person = PersonWithStrongRef()
        
    }
   
}
