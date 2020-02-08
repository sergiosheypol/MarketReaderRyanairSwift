//
//  Controller.swift
//  iDwnld
//
//  Created by Lopez de la Flor, Sergio on 07/02/2020.
//  Copyright © 2020 Lopez de la Flor, Sergio. All rights reserved.
//

import Foundation

class Controller: ObservableObject {
    
    
    private let urlString = "https://www.ryanair.com/content/ryanair.markets.json"
    
    @Published private var languages: [Language]? = nil

    private let decoder = JSONDecoder()
    
    func getLanguages() -> [Language] {
        if languages == nil {
            return [Language(code: "", name: "", languageCode: "", languageName: "", path: "")]
        }
        
        return languages!
    }
    
    func downloadMarkets() {
        
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
            
            print("Download OK")
            
        } catch let error as NSError {
            print("Failed to load: \(error.localizedDescription)")
        }
        
    }
}
