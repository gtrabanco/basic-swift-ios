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


//MARK: - JsonKeys
enum JSONKeys:String {
    case firstName   = "firstName"
    case lastName    = "lastName"
    case alias       = "alias"
    case soundFile   = "soundFile"
    case imageFile   = "imageFile"
    case affiliation = "affiliation"
    case url         = "url"
}


//MARK: - Decoding
func decode(StarWarsCharacter json:JSONDictionary) throws ->StarWarsCharacter {
    
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
            sound = NSData(contentsOfURL: NSURL(string: soundName))
        else {
            throw JSONProcessingError.InvalidUrlFormatForJSONResource
    }
}









