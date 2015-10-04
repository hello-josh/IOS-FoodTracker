//
//  Meal.swift
//  FoodTracker
//
//  Created by Joshua Johnston on 10/4/15.
//  Copyright © 2015 Josh Johnston. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    
    var rating: Int
    var name: String
    var photo: UIImage?
    
    // MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
    
}
