//
//  CreditCard.swift
//  Class2ArcExamples
//
//  Created by Michael Prenez-Isbell on 4/2/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import UIKit

class CreditCardWithUnownedRef  {
    
    // can never be nil, so non-optional
    unowned var customer: CustomerWithStrongRef
    

    init (aCustomer: CustomerWithStrongRef) {
        customer = aCustomer
        
    }
    
 
   
}
