//
//  ContentView.swift
//  Wallet
//
//  Created by Геворг on 16.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
        }.padding(25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
