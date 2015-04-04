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
        createThirdScenario()
        
    }
    
    func createStrongReferenceCycle() {
        
        // remember: a strong reference can be nil
        // sees other object
        // also lassos it
        
        var thisPerson : PersonWithStrongRef? = PersonWithStrongRef()
        var thisApartment : ApartmentWithStrongRef? = ApartmentWithStrongRef()
        thisApartment?.person = thisPerson
        thisPerson!.apartment = thisApartment
        
        // now 1 both instances created 2 both objects have strong references to each other
        
        // so now we nil out the apartment
        thisApartment = nil
        
        // apartment instance doesn't go away because person instance still holds strong reference to it
        
        // now we nil out person
        thisPerson = nil
        
        // person instance doesn't go away because the apartment instance  (that didn't go away)
        // still holds a strong reference to the person instance
        
        // congratulations, you have created a memory leak
        
        
    }
    
    func createWeakReference() {
        
    // remember: a weak reference can be nil
    // sees other object
    // doesn't lasso it
        
        var thisPerson : PersonWithStrongRef? = PersonWithStrongRef()
        var thisApartment : ApartmentWithWeakRef? = ApartmentWithWeakRef()
        thisApartment?.person = thisPerson
        thisPerson!.apartment = thisApartment
        
        // now 1 both instances created 2 person has strong ref to apartment 3 apartment has weak ref to person
        
        // so now we nil out the apartment first
        thisApartment = nil
        
        // apartment instance doesn't go away because person instance still holds strong reference to it
        
        // now we nil out person
        thisPerson = nil
        
        // person instance  goes away because nothing has a strong reference to it
        // that also releases person's strong ref to apartment
        // now, nothing holds a strong ref to apartment, so apartment instance goes away too
        
        // now let's do it the other way:
        
        
        thisPerson = PersonWithStrongRef()
        thisApartment = ApartmentWithWeakRef()
        thisApartment?.person = thisPerson
        thisPerson!.apartment = thisApartment
        
        // now 1 both instances created 2 person has strong ref to apartment 3 apartment has weak ref to person
        
        // now we nil out person first
        thisPerson = nil
        
        // person instance goes away immediately because nothing holds a strong reference to it
        
        // now we nil out apartment
        thisApartment = nil
        
        // now apartment instance goes away because nothing holds a strong reference to it
        

        
    }
    
    func createUnownedReference() {
        
        // remember: an unowned reference cannot be nil. In this case, creditCard's reference to customer cannot
        // be nil, because a credit card MUST have a customer (a customer does not necessarily have a credit card
        // and can be nil)
        // sees other object
        // does not lasso it
        
        // so create a customer instance
        // then create a creditCard instance ON the customer instance, and init the credit card to point back at the customer instance
        // with an unowned reference (see credit card class)
        var thisCustomer : CustomerWithStrongRef? = CustomerWithStrongRef()
        thisCustomer!.creditCard = CreditCardWithUnownedRef(aCustomer: thisCustomer!)
        
        // now 1 both instances created 2 customer has strong reference to credit card 3 credit card has unowned reference
        // to person
        
        // NOTICE NO separate variable in this method holds reference to credit card, it is unowned here.
        // in other words there is no thisCreditCard variable.
        
        
        // so let's nil out the customer
        thisCustomer = nil
        
        // now, customer instance goes away because no strong reference to it
        // and then credit card instance goes away because no strong reference to it
        
        // now let's try it the other way
        
        thisCustomer = CustomerWithStrongRef()
        thisCustomer!.creditCard = CreditCardWithUnownedRef(aCustomer: thisCustomer!)
        
        // so let's nil out the credit card
        
        thisCustomer!.creditCard = nil
        // so now credit card instance goes away because customer reference is nilled out
        
        thisCustomer = nil
        // and now customer instance goes away because no strong references pointing at it
        
        
    }
    
    func createThirdScenario()
    /*
    “However, there is a third scenario, in which both properties should always have a value, and neither property should ever be nil once initialization is complete. In this scenario, it is useful to combine an unowned property on one class with an implicitly unwrapped optional property on the other class.”
    
    Excerpt From: Apple Inc. “The Swift Programming Language.” iBooks. https://itun.es/us/jEUH0.l
    */
    
    
    
    
    
}