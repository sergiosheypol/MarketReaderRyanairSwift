//
//  LanguageDetailView.swift
//  iDwnld
//
//  Created by Lopez de la Flor, Sergio on 08/02/2020.
//  Copyright © 2020 Lopez de la Flor, Sergio. All rights reserved.
//

import SwiftUI

struct LanguageDetailView: View {
    
    var language: Language
    
    var body: some View {
        
        List {
            Text("Name: \(language.name)")
            Text("Code: \(language.languageCode)")
            Text("Language name: \(language.languageName)")
            Text("Path: \(language.path)")
        }.navigationBarTitle(language.name)
            .listStyle(GroupedListStyle())
    }
}

struct LanguageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDetailView(language: Language.example)
    }
}
