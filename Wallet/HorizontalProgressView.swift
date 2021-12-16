//
//  HorizontalProgressView.swift
//  Wallet
//
//  Created by Геворг on 16.12.2021.
//

import SwiftUI

struct HorizontalProgressView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color.primaryYellow)
                .frame(height: 20)
            RoundedRectangle(cornerRadius: 5)
                .fill(Color.primaryPurple)
                .frame(
                    width: 50,
                    height: 20
                )
        }
    }
}

struct HorizontalProgressView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalProgressView()
    }
}
