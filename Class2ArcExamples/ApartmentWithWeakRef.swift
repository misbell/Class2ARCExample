//
//  WeakApartment.swift
//  Class2ArcExamples
//
//  Created by prenez on 4/3/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import UIKit

class ApartmentWithWeakRef : Place {
    
    // can be nil, so optional
    weak var person: PersonWithStrongRef?
    
    init (aPerson: PersonWithStrongRef) {
        person = aPerson
    }
    
    override init() {
        person = nil
    }

}

