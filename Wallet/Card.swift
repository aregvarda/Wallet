//
//  Card.swift
//  Wallet
//
//  Created by Геворг on 16.12.2021.
//

import SwiftUI

struct Card {
    let income: Int
    let expenses: Int
    var balance: Int {
        income - expenses
    }
    let cardNumber: String
    let imageName: String
    var isSelected = false
    var backgroundColor: Color {
        isSelected ? Color.primaryPurple : Color.primaryYellow
    }
    var textColor: Color {
        isSelected ? .white : .black
    }
}
