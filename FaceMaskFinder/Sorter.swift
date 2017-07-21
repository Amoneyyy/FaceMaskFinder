//
//  File.swift
//  FaceMaskFinder
//
//  Created by Jeffrey L Olson Jr on 7/21/17.
//  Copyright © 2017 Lucia Holzheu. All rights reserved.
//

import Foundation

class Recommender {
    let skinType: String
    let skinProblem: String
    var productList: [String]
    
    init(skinType: String, skinProblem: String) {
        self.skinProblem = skinProblem
        self.skinType = skinType
        productList = []
    }
    
    
    
    func recommendedProducts() -> [String] { // returns a list of products where each product is only added if it meets your needs.
        
        if skinType == "Oily" {
                productList.append("mask1")
        }
        
        productList.append("mask2")
        
        return productList
    
    }
    
    
    
}
