//
//  StarWarsCharacter.swift
//  StarWarsVII
//
//  Created by Gabriel Trabanco Llano on 24/11/15.
//  Copyright © 2015 Gabriel Trabanco Llano. All rights reserved.
//

import UIKit

class StarWarsCharacter:Equatable {
    
    //MARK: - Properties
    let firstName    : String?
    let lastName     : String?
    let alias        : String?
    let photo        : UIImage
    let url          : NSURL
    let soundData    : NSData
    let affiliation : StarWarsAffiliation
    
    //MARK: - Computed Variables
    //They are a read only variables
    var name : String? {
        get {
            
            guard firstName == nil && lastName == nil else {
                //If firstname and lastname are not null
                return "\(firstName!) \(lastName!)"
            }
            
            //If we do not have the firstName return lastName
            guard let _ = firstName else {
                return lastName!
            }
            
            guard let _ = lastName else {
                return firstName!
            }
            
            //If we are here we have nothing
            return ""
        }
        
        /*
        set {
            _name =
        }
        */
    }
    
    
    //MARK: - Init (Designated Initializer)
    init(firstName: String?,
        lastName: String?,
        alias: String?,
        soundData: NSData,
        photo: UIImage,
        url: NSURL,
        affiliation:StarWarsAffiliation) {
            
            self.firstName    = firstName
            self.lastName     = lastName
            self.alias        = alias
            self.soundData    = soundData
            self.photo        = photo
            self.url          = url
            self.affiliation  = affiliation
        
    }
    
    //MARK: - Init (Convenience Initializer)
    convenience init(alias: String?,
        soundData: NSData,
        photo: UIImage,
        url:NSURL,
        affiliation:StarWarsAffiliation) {
            
        self.init(firstName: nil,
            lastName: nil,
            alias: alias,
            soundData: soundData,
            photo: photo,
            url: url,
            affiliation: affiliation)
        
    }
    
    //MARK: - Proxies
    var proxyForComparison:String {
        get {
            return "\(firstName)\(lastName)\(alias)\(url)\(affiliation)"
        }
    }
    
}

//MARK: Operators
//Two ways define as empty extension or in the class and declare after
//As extension it would be
// extension StarWarsCharacter:Equatable {}
//And the function or like this added in the top at the class and
// later after the class

func == (lhs: StarWarsCharacter, rhs: StarWarsCharacter) -> Bool {
    
    //First compare if they are pointing to the same memory address,
    // its said. If they are the same object.
    guard lhs !== rhs else { // They are not different (they are the same)
        return false
    }
    
    //Then compare if the class are different
    guard lhs.dynamicType == rhs.dynamicType else {
        return false
    }
    
    //Finally compare the interesting values in the class because
    // they are the same class and they are no pointing to the
    // instance of the same class
    return (lhs.proxyForComparison == rhs.proxyForComparison)
}


// Extensions is the considered right way to do other stuff in Swift
//  we will apply the protocol CustomStringConvertible
extension StarWarsCharacter: CustomStringConvertible {
    
    var description:String {
        get {
             guard name == nil && alias == nil else {
                return "<\(self.dynamicType): \(name!) \(alias!)>"
            }
            
            return "<\(self.dynamicType)>"
        }
    }
    
}













