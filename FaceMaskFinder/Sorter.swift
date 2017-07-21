//
//  Sorter.swift
//  FaceMaskFinder
//
//  Created by Lucia Holzheu on 7/21/17.
//  Copyright © 2017 Lucia Holzheu. All rights reserved.
//

import Foundation

class Sorter {
    
    let skinType: String
    
    let skinProblem: String
    
    var results: [String] = []
    
    init(skinType: String, skinProblem: String) {
        self.skinProblem = skinProblem
        self.skinType = skinType
        
    }
    
    func recommend() -> [String] {
        results = []
        if skinType == "Combination" || skinType == "Dry" {
            results.append("Biomiracle Anti-aging and Moisturizing Face Mask Sheets")
        }
        results.append("Garnier Skinactive Clean and Pore Purifying 2-in-1 Clay Cleanser and Mask")
        return results
    }
    
}


