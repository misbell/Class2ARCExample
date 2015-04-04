//
//  Person.swift
//  Class2ArcExamples
//
//  Created by Michael Prenez-Isbell on 4/2/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import UIKit

class PersonWithStrongRef {
    

    // strong ref to apartment
    var apartment: Thing?
    
    
    init (anApartment: Thing) {
        
        apartment = anApartment
        
    }
    
    init() {
        
    }


}
