//
//  StarWarsCharacter.swift
//  StarWarsVII
//
//  Created by Gabriel Trabanco Llano on 24/11/15.
//  Copyright © 2015 Gabriel Trabanco Llano. All rights reserved.
//

import UIKit

class StarWarsCharacter {
    
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
            
            //If we do not have the firstName return lastName
            guard let firstName = firstName else {
                return lastName
            }
            
            guard let lastName = lastName else {
                return firstName
            }
            
            //If we are here we have both
            return "\(firstName) \(lastName)"
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
    
}