//
//  Apartment.swift
//  Class2ArcExamples
//
//  Created by Michael Prenez-Isbell on 4/2/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import UIKit

class ApartmentWithStrongRef : Place  {
    
    // strong ref to person
    var person: PersonWithStrongRef?
    
    init (aPerson: PersonWithStrongRef) {
        person = aPerson
    }

    override init() {
        person  = nil
    }
}
