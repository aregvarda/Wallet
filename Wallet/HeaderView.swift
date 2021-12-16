//
//  HeaderView.swift
//  Wallet
//
//  Created by Геворг on 16.12.2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: <#T##CGFloat?#>, content: <#T##() -> _#>) {
                Text("Good Morning")
                    .font(.callout)
                    .foregroundColor(Color(.systemGray3))
                Text("Areg Vardanian")
                    .font(.title)
                    .fontWeight(.bold)
            }
            Spacer()
            Image("me")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
