//
//  main.swift
//  name-the-rabbit
//
//  Created by Flatiron School on 9/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


let input: [String] =  ["s", "annie", "bonnie", "liz", "bomoie"]

func answer(names: [String]) -> [String] {
    
    let charCostDictionary: [Character: Int] = ["a": 1,
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
    var nameCostDictionary: [Int: [String]] = [:]
    var result: [String] = []
    
    // go through all names and find out "cost"
    // based on cost of each letter in that name
    for name in names {
        var nameCost = 0
        for char in name.characters {
            if let cost = charCostDictionary[char] {
                nameCost += cost
            } else {
                print("There is not a letter provided in name!")
                break
            }
        }
        if nameCostDictionary[nameCost] != nil {
            nameCostDictionary[nameCost]?.append(name)
        } else {
            nameCostDictionary[nameCost] = [name]
        }
        
    }
    
    // all names' costs sorted as descending order
    let allCosts = Array(nameCostDictionary.keys).sort { $0 > $1 }
    
    
    // for each cost take a name 
    // if there are several name - sort them as descending order
    for cost in allCosts {
        let nameArray = nameCostDictionary[cost]
        if nameArray!.count == 1 {
            result.append((nameArray?.first)!)
        } else {
            let sortedNameArray = nameArray!.sort { $0 > $1 }
            for name in sortedNameArray {
                result.append(name)
            }
        }
        
    }
    return result
}


print(answer(input))
// ["bonnie", "bomoie", "liz", "annie", "s"]


