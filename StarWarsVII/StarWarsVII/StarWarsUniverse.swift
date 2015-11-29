//
//  StarWarsUniverse.swift
//  StarWarsVII
//
//  Created by Gabriel Trabanco Llano on 28/11/15.
//  Copyright © 2015 Gabriel Trabanco Llano. All rights reserved.
//

import UIKit


typealias StarWarsCharacterType = Array<StarWarsCharacter>
typealias StarWarsUniverseType = Dictionary<StarWarsAffiliation, StarWarsCharacterType>


enum StarWarsUniverseError {
    case CharacterNotExists
}




class StarWarsUniverse {
    
    
    //MARK: - Private Interface
    
    //Save the characters in a dict
    private var characters : StarWarsUniverseType //[StarWarsAffiliation:[StarWarsCharacter]]
    
    
    //MARK: - Initialization
    init(arrayOfCharacters: [StarWarsCharacter]) {
        
        //Init the dict empty
        characters = StarWarsUniverseType()
        
        for each in StarWarsAffiliation.cases() {
            characters[each] = StarWarsCharacterType()
        }
        
        
        //Go character by character and decide where to add each character
        // by its affiliation
        
        for character in arrayOfCharacters {
            
            //Group it by its affiliation
            
            //Knowing the affiliation
            let aff = character.affiliation
            characters[aff]?.append(character)
        }
        
        
        
    }
    
    
    //MARK: - Public Interface
    //Total of characters
    var count: Int {
        get {
            var total = 0
            
            for affiliation in StarWarsAffiliation.cases() {
                total += countCharacters(affiliation)
            }
            
            return total
        }
    }
    
    // Total of afiliations
    var countAffiliations: Int {
        
        get {
            
            return StarWarsAffiliation.countAffiliations()
        
        }
        
    }
    
    // Total of characters for each afiliation
    func countCharacters(inAffiliation: StarWarsAffiliation) -> Int {
        
        //Get the array of affiliation and return the size
        if let chars = characters[inAffiliation] {
            
            return chars.count
            
        } else {
            
            return 0
        }
        
    }
    
    // Name of afiliation
    func affiliationName(atIndex: Int) -> String {
        
        let affiliations = Array(self.characters.keys)
        let aff = affiliations[atIndex]
        
        return StarWarsAffiliation.nameOfAffiliation(aff)
    }
    
    //*
    // The character n of afiliation m
    subscript(idx: Int, inAffiliation aff: StarWarsAffiliation) -> StarWarsCharacter? {
        get {
            //Get the array of the affiliation
            if let chars = characters[aff] {
                return chars[idx]
            }
            
            return nil
        }
    }
    // */
}

