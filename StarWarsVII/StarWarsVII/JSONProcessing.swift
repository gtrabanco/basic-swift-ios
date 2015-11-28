//
//  JSONProcessing.swift
//  StarWarsVII
//
//  Created by Gabriel Trabanco Llano on 26/11/15.
//  Copyright © 2015 Gabriel Trabanco Llano. All rights reserved.
//

import UIKit

/*
{
"firstName"    : null,
"lastName"     : null,
"alias"        : "R2-D2",
"soundFile"    : "r2-d2.caf",
"imageFile"    : "r2-d2.jpg",
"affiliation"  : "Rebel Alliance",
"url"          : "https://en.wikipedia.org/wiki/R2-D2",
}
*/



//MARK: - Aliases
typealias JSONObject     = AnyObject
typealias JSONDictionary = [String:JSONObject]
typealias JSONArray      = [JSONDictionary]


//MARK: - Error
enum JSONProcessingError:ErrorType {
    case InvalidUrlFormatForJSONResource
    case ResourcePointedByURLNotReachable
    case JSONParsingError
    case JSONFormatError
}

//MARK: - Structs
struct StrictStarWarsCharacter {
    let firstName    : String?
    let lastName     : String?
    let alias        : String?
    let photo        : UIImage
    let url          : NSURL
    let soundData    : NSData
    let affiliation : StarWarsAffiliation
}

struct StrictForceSensitive {
    let character:StrictStarWarsCharacter
    let midichlorians: Int
}


//MARK: - JsonKeys
enum JSONKeys:String {
    case firstName     = "firstName"
    case lastName      = "lastName"
    case alias         = "alias"
    case soundFile     = "soundFile"
    case imageFile     = "imageFile"
    case affiliation   = "affiliation"
    case url           = "url"
    case midichlorians = "midichlorians"
}


//MARK: - Decoding
func decode(StarWarsCharacter json:JSONDictionary) throws ->StrictStarWarsCharacter {
    
    guard let urlString = json[JSONKeys.url.rawValue] as? String,
            url = NSURL(string: urlString)
        else {
        throw JSONProcessingError.InvalidUrlFormatForJSONResource
    }
    
    guard let imageName = json[JSONKeys.imageFile.rawValue] as? String,
            image = UIImage(named: imageName)
        else {
            throw JSONProcessingError.InvalidUrlFormatForJSONResource
    }
    
    guard let soundName = json[JSONKeys.soundFile.rawValue] as? String,
            soundURL = NSBundle.mainBundle().URLForResource(soundName),
            soundData = NSData(contentsOfURL: soundURL)
        else {
            throw JSONProcessingError.ResourcePointedByURLNotReachable
    }
    
    guard let affiliationName = json[JSONKeys.affiliation.rawValue] as? String
        else {
            throw JSONProcessingError.JSONFormatError
    }
    
    let firstName   = json[JSONKeys.firstName.rawValue] as? String
    let lastName    = json[JSONKeys.lastName.rawValue] as? String
    let alias       = json[JSONKeys.alias.rawValue] as? String
    
    let affiliation = StarWarsAffiliation.byName(affiliationName)
    
    //Creating the StarwarsCharacter
    return StrictStarWarsCharacter(firstName: firstName,
        lastName: lastName,
        alias: alias,
        photo: image,
        url: url,
        soundData: soundData,
        affiliation: affiliation)
    
}


func decode(ForceSensitive json:JSONDictionary) throws -> StrictForceSensitive {
    
    guard let midichlorians = json[JSONKeys.midichlorians.rawValue] as? Int
        else {
            throw JSONProcessingError.JSONFormatError
    }
    
    return StrictForceSensitive(
        character: try decode(StarWarsCharacter: json),
        midichlorians: midichlorians)
}









