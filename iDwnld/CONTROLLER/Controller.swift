//
//  Controller.swift
//  iDwnld
//
//  Created by Lopez de la Flor, Sergio on 07/02/2020.
//  Copyright © 2020 Lopez de la Flor, Sergio. All rights reserved.
//

import Foundation

class Controller {
    
    static let urlString = "https://www.ryanair.com/content/ryanair.markets.json"
    
    static var languages: [Language]? = nil

    static let decoder = JSONDecoder()
    
    static func downloadMarkets() {
        
        guard let url = URL(string: self.urlString) else {
            print("Error in URL")
            return
        }

        guard let data = try? Data(contentsOf: url) else {
            print("Error in DL")
            return
        }
        
        do {
            
            self.languages = try decoder.decode([Language].self, from: data)
            
        } catch let error as NSError {
            print("Failed to load: \(error.localizedDescription)")
        }
        
    }
}
