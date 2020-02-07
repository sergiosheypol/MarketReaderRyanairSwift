//
//  ContentView.swift
//  iDwnld
//
//  Created by Lopez de la Flor, Sergio on 07/02/2020.
//  Copyright © 2020 Lopez de la Flor, Sergio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let lgs = Controller.downloadMarkets()
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hola")
            }.navigationBarTitle("Ola k ase")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
