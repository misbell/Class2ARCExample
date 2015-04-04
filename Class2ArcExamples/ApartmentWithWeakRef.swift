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

}

//unowned(safe) and unowned(unsafe).
//http://www.drewag.me/posts/7-cool-features-in-swift


//http://mikebuss.com/2014/06/22/lazy-initialization-swift/

