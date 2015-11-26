//
//  Affiliations.swift
//  StarWarsVII
//
//  Created by Gabriel Trabanco Llano on 25/11/15.
//  Copyright © 2015 Gabriel Trabanco Llano. All rights reserved.
//

import Foundation


enum StarWarsAffiliation {
    
    case GalacticEmpire
    case RebelAlliance
    case JabbaCriminalEmpire
    case FirstOrder
    case Unknown
    
    
    // Type Method or Static method in orther languages
    static func byName(name: String) -> StarWarsAffiliation {
        
        let returnAffiliation: StarWarsAffiliation
        
        switch name {
            
            case "Galactic Empire":
                returnAffiliation = .GalacticEmpire
            
            case "Rebel Alliance":
                returnAffiliation = .RebelAlliance
            
            case "Jabba's Criminal Empire":
                returnAffiliation = .JabbaCriminalEmpire
            
            case "First Order":
                returnAffiliation = .RebelAlliance
            
            default:
                returnAffiliation = .Unknown
            
        }
        
        return returnAffiliation
    }
}


//Other way to make it is defineing types
/*/
enum MyEnum:Int {
    case myValueOne = 1
    case myValueTwo = 2
}
// */