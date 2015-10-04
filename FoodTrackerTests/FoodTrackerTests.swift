//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Joshua Johnston on 9/30/15.
//  Copyright © 2015 Josh Johnston. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        
        let meal = Meal(name: "Dinner", photo: nil, rating: 3)

        XCTAssertNotNil(meal)
        
        let failedName = Meal(name: "", photo: nil, rating: 0)
        
        XCTAssertNil(failedName, "Name is required to be not empty")
        
        let failedRating = Meal(name: "Negative Meal", photo: nil, rating: -1)
        
        XCTAssertNil(failedRating, "Negative ratings are invalid, be positive")
    }
    
    
}
