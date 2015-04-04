//
//  WeakApartment.swift
//  Class2ArcExamples
//
//  Created by prenez on 4/3/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import UIKit

class ApartmentWithWeakRef : Thing {
    
    weak var person: PersonWithStrongRef?
    
    init (aPerson: PersonWithStrongRef) {
        person = aPerson
    }

}

