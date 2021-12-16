//
//  CardListVIew.swift
//  Wallet
//
//  Created by Геворг on 16.12.2021.
//

import SwiftUI

struct CardListVIew: View {
    @EnvironmentObject var wallet: Wallet
    
    var headerView: some View {
        HStack {
            Text("Your cards")
            Spacer()
            Button("Add new") {}
        }
    }
    
    var body: some View {
        VStack {
            headerView
            Spacer()
        }
    }
}

struct CardListVIew_Previews: PreviewProvider {
    static var previews: some View {
        CardListVIew()
    }
}
