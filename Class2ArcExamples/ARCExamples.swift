//
//  ARCExamples.swift
//  Class2ArcExamples
//
//  Created by prenez on 4/4/15.
//  Copyright (c) 2015 Michael Prenez-Isbell. All rights reserved.
//

import Foundation

class ArcExamples {
    
     init() {
        
    }
    
    func createExamples() {
        
        createStrongReferenceCycle()
        createWeakReference()
        createUnownedReference()
        
    }
    
    func createStrongReferenceCycle() {
        
        // remember: a strong reference can be nil
        // sees other object
        // also lassos it
        
        var thisPerson : PersonWithStrongRef? = PersonWithStrongRef()
        var thisApartment : ApartmentWithStrongRef? = ApartmentWithStrongRef(aPerson: thisPerson!)
        thisPerson!.apartment = thisApartment
        
        // now 1 both objects created 2 both objects have strong references to each other
        
        // so now we nil out the apartment
        thisApartment = nil
        
        // apartment doesn't go away because person instance still holds strong reference to it
        
        // now we nil out person
        thisPerson = nil
        
        // person doesn't go away because the apartment object (that didn't go away) 
        // still holds a strong reference to the person
        
        // congratulations, you have created a memory leak
        
        
    }
    
    func createWeakReference() {
        
    // remember: a weak reference can be nil
    // sees other object
    // doesn't lasso it
        
        var thisPerson : PersonWithStrongRef? = PersonWithStrongRef()
        var thisApartment : ApartmentWithWeakRef? = ApartmentWithWeakRef(aPerson: thisPerson!)
        thisPerson!.apartment = thisApartment
        
        // now 1 both objects created 2 person has strong ref to apartment 3 apartment has weak ref to person
        
        // so now we nil out the apartment first
        thisApartment = nil
        
        // apartment doesn't go away because person instance still holds strong reference to it
        
        // now we nil out person
        thisPerson = nil
        
        // person object goes away because nothing has a strong reference to it
        // that also releases person's strong ref to apartment
        // now, nothing holds a strong ref to apartment, so apartment goes awayt to
        
        // now let's do it the other way:
        
        thisPerson = PersonWithStrongRef()
        thisApartment = ApartmentWithWeakRef(aPerson: thisPerson!)
        thisPerson!.apartment = thisApartment
        
        // now 1 both objects created 2 person has strong ref to apartment 3 apartment has weak ref to person
        
        // now we nil out person first
        thisPerson = nil
        
        // it goes away immediately because nothing holds a strong reference to it
        
        // now we nil out apartment
        thisApartment = nil
        
        // now apartment goes away because nothing holds a strong reference to it
        

        
    }
    
    func createUnownedReference() {
        
        // remember: a strong reference can be nil
        // sees other object
        // also lassos it
        
        var thisPerson : PersonWithStrongRef? = PersonWithStrongRef()
        var thisApartment : ApartmentWithStrongRef? = ApartmentWithStrongRef(aPerson: thisPerson!)
        thisPerson!.apartment = thisApartment
        
        // now 1 both objects created 2 both objects have strong references to each other
        
        // so now we nil out the apartment
        thisApartment = nil
        
        // apartment doesn't go away because person instance still holds strong reference to it
        
        // now we nil out person
        thisPerson = nil
        
        // person doesn't go away because the apartment object (that didn't go away)
        // still holds a strong reference to the person
        
        // congratulations, you have created a memory leak
        
    }
    
    
    
    
}