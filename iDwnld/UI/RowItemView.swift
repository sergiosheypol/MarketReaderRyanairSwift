//
//  RowItemView.swift
//  iDwnld
//
//  Created by Lopez de la Flor, Sergio on 08/02/2020.
//  Copyright © 2020 Lopez de la Flor, Sergio. All rights reserved.
//

import SwiftUI

struct RowItemView: View {
    
    var language: Language
    
    var body: some View {
        NavigationLink (destination: LanguageDetailView(language: language)){
            Text(language.languageName)
        }
    }
}

struct RowItemView_Previews: PreviewProvider {
    static var previews: some View {
        RowItemView(language: Language.example)
    }
}
