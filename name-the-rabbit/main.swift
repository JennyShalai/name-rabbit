//
//  main.swift
//  name-the-rabbit
//
//  Created by Flatiron School on 9/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


let input: [String] =  ["annie", "bonnie", "liz", "bomoie"]

func answer(names: [String]) -> [String] {
    
    let charCost: [Character: Int] = ["a": 1,
                                      "b": 2,
                                      "c": 3,
                                      "d": 4,
                                      "e": 5,
                                      "f": 6,
                                      "g": 7,
                                      "h": 8,
                                      "i": 9,
                                      "j": 10,
                                      "k": 11,
                                      "l": 12,
                                      "m": 13,
                                      "n": 14,
                                      "o": 15,
                                      "p": 16,
                                      "q": 17,
                                      "r": 18,
                                      "s": 19,
                                      "t": 20,
                                      "u": 21,
                                      "v": 22,
                                      "w": 23,
                                      "x": 24,
                                      "y": 25,
                                      "z": 26]
    var resultDictionary: [Int: [String]] = [:]
    
    // go through all names and find out "cost"
    // based on cost of each letter in that name
    for name in names {
        var nameCost = 0
        for char in name.characters {
            if let cost = charCost[char] {
                nameCost += cost
            } else {
                print("There is not a letter provided in name!")
                break
            }
        }
        if resultDictionary[nameCost] != nil {
            resultDictionary[nameCost]?.append(name)
        } else {
            resultDictionary[nameCost] = [name]
        }
        
    }
    
    print(resultDictionary)
    
    
    
    
    return []
}


let result = answer(input)


