//
//  ContentView.swift
//  iDwnld
//
//  Created by Lopez de la Flor, Sergio on 07/02/2020.
//  Copyright © 2020 Lopez de la Flor, Sergio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var controller: Controller
    
    
    var body: some View {
        
         NavigationView {
            VStack {
                List{
                    ForEach(controller.getLanguages(), id: \.self) { item in
                        RowItemView(language: item)
                    }
                }
                
            }.navigationBarTitle("Available markets")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
        
    static var previews: some View {
        ContentView()
    }
}
