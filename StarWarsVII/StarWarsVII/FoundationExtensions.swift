//
//  FoundationExtensions.swift
//  StarWarsVII
//
//  Created by Gabriel Trabanco Llano on 26/11/15.
//  Copyright © 2015 Gabriel Trabanco Llano. All rights reserved.
//

import Foundation

extension NSBundle {
    func URLForResource(resourceName:String) -> NSURL? {
        
        let tokens = resourceName.componentsSeparatedByString(".")
        
        return self.URLForResource(tokens.first, withExtension: tokens.last)
    }
}


