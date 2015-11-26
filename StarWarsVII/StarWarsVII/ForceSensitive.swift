//
//  ForceSensitive.swift
//  StarWarsVII
//
//  Created by Gabriel Trabanco Llano on 25/11/15.
//  Copyright © 2015 Gabriel Trabanco Llano. All rights reserved.
//

import UIKit

class ForceSensitive: StarWarsCharacter {
    //MARK: - Properties
    let midichlorians : Int
    
    //MARK: - Initialization
    init(firstName: String?,
        lastName: String?,
        alias: String?,
        soundData: NSData,
        photo: UIImage,
        url: NSURL,
        affiliation: StarWarsAffiliation,
        midichlorians: Int) {
            
            //All initializers needs to initialize first its variables
            self.midichlorians = midichlorians
            super.init(firstName: firstName,
                lastName: lastName,
                alias: alias,
                soundData: soundData,
                photo: photo,
                url: url,
                affiliation: affiliation)
        
    }
    
    convenience init(jediWithFirstName: String?,
        lastName: String?,
        alias: String?,
        soundData: NSData,
        photo: UIImage,
        url: NSURL,
        midichlorians: Int) {
            
            self.init(firstName: jediWithFirstName,
                lastName: lastName,
                alias: alias,
                soundData: soundData,
                photo: photo,
                url: url,
                affiliation: .RebelAlliance,
                midichlorians: midichlorians);
    }
    
    convenience init(sithWithFirstName: String?,
        lastName: String?,
        alias: String?,
        soundData: NSData,
        photo: UIImage,
        url: NSURL,
        midichlorians: Int) {
            
            self.init(firstName: sithWithFirstName,
                lastName: lastName,
                alias: alias,
                soundData: soundData,
                photo: photo,
                url: url,
                affiliation: .GalacticEmpire,
                midichlorians: midichlorians);
    }
    
    
    //MARK: - Proxies
    
    override var proxyForComparison:String {
        get {
            return "\(super.proxyForComparison) \(midichlorians)"
            //You can also concatenate with "+"
        }
    }
    
    override var proxyForSorting:String {
        get {
            let isSith = ((affiliation == .GalacticEmpire) || (affiliation == .FirstOrder)) ? "Z" : "X"
            
            return "\(isSith)\(super.proxyForSorting)\(midichlorians)"
        }
    }
}



