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
    
    var incomeView: some View {
        HStack(spacing: 10) {
            Image(systemName: "arrow.down")
        }
        Text("In")
    }
    
    var expensesView: some View {
        Text("Out")
    }
    
    
    var body: some View {
        VStack {
            headerView
            HorizontalProgressView(percentage: $incomePercentage)
            HStack {
                incomeView
                Spacer()
                expensesView
            }
            Spacer()
        }
        .onAppear {
            update()
        }
        .onChange(of: wallet.selectedCard) { _ in
            update()
        }
    }
    private func update() {
        withAnimation(.spring(response: 2)) {
            incomePercentage = wallet.selectedCard.incomePercentage
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
            .environmentObject(Wallet())
    }
}
