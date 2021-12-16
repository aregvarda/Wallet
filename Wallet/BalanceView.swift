//
//  BalanceView.swift
//  Wallet
//
//  Created by Геворг on 16.12.2021.
//

import SwiftUI

struct BalanceView: View {
    @EnvironmentObject var wallet: Wallet
    @State private var incomePercentage = 0
    
    var headerView: some View {
        HStack {
            Text("Balance")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Text("$\(wallet.selectedCard.balance)")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.primaryPurple)
                .padding(.trailing)
        }
    }
    
    var body: some View {
        VStack {
            headerView
            HorizontalProgressView()
            Spacer()
        }.onChange(of: wallet.selectedCard) { _ in
            update()
        }
    }
    private func update() {
        incomePercentage = wallet.selectedCard.incomePercentage
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
            .environmentObject(Wallet())
    }
}
