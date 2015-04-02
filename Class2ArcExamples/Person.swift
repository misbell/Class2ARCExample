//
//  Person.swift
//  Class2ArcExamples
//
//  Created by Michael Prenez-Isbell on 4/2/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import UIKit

class Person {
    
    var apartment: Apartment?
    var creditcard: CreditCard?
    let name :String
    
    init (anApartment: Apartment, aName: String) {
        
        apartment = anApartment
        creditcard = nil
        name = aName
    }
    
    init (aCreditCard: CreditCard, aName: String) {
        creditcard = aCreditCard
        apartment = nil
        name = aName
    }

}
