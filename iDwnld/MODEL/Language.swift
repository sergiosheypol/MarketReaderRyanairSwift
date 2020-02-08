//
//  language.swift
//  iDwnld
//
//  Created by Lopez de la Flor, Sergio on 07/02/2020.
//  Copyright © 2020 Lopez de la Flor, Sergio. All rights reserved.
//

import Foundation

struct Language: Codable, Hashable {
    var code: String
    var name: String
    var languageCode: String
    var languageName: String
    var path: String
    
    
    static let example = Language(code: "es", name: "Spain", languageCode: "es", languageName: "Spanish", path: "/es/es")
}
