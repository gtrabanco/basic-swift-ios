//
//  StarWarsUniverse.swift
//  StarWarsVII
//
//  Created by Gabriel Trabanco Llano on 28/11/15.
//  Copyright © 2015 Gabriel Trabanco Llano. All rights reserved.
//

import UIKit







class StarWarsUniverse {
    
    //MARK: - Initialization
    
    //MARK: - Private Interface
    
    //MARK: - Public Interface
    //Total of characters
    var count: Int {
        get {
            //:TODO
            return 0
        }
    }
    
    // Total of afiliations
    var countAffiliations: Int {
        get {
            //:TODO
            return 0
        }
    }
    
    // Total of characters for each afiliation
    func countCharacters(inAffiliation: StarWarsAffiliation) -> Int {
        //:TODO
        return 0
    }
    
    // Name of afiliation
    func affiliationName(atIndex: Int) -> String {
        //:TODO
        return ""
    }
    
    /*
    // The character n of afiliation m
    subscript(idx: Int, inAffiliation aff: StarWarsAffiliation) -> StarWarsCharacter {
        get {
            //TODO
            return StarWarsCharacter()
        }
    }
    //*/
}

