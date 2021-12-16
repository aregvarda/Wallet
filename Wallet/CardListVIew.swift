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
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Button("Add new") {}
            .font(.callout)
            .foregroundColor(Color.primaryPurple)
            .padding(.trailing)
        }
    }
    
    var body: some View {
        VStack {
            headerView
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(wallet.cards.indices, id: \.self) { index in
                        CardView(card:wallet.cards[index])
                            .onTapGesture {
                                <#code#>
                            }
                    }
                }
            }
        }
    }
}

struct CardListVIew_Previews: PreviewProvider {
    static var previews: some View {
        CardListVIew()
            .environmentObject(Wallet())
    }
}
