//
//  BackButton.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

struct BackButtonView: View {

    var action: DismissAction

    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "chevron.left")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .padding([.trailing, .top, .bottom], 10)
                .padding(.leading, 5.5)
                .background(Color.white)
                .overlay(
                    Circle()
                      .stroke(.green, lineWidth: 4)
                )
                .foregroundStyle(Color.primary.opacity(0.6))
                .clipShape(.circle)
                .shadow(radius: 3)

        }
    }
}

#Preview {
  
    @Previewable  @Environment(\.dismiss) var dismiss

    BackButtonView (action: dismiss)
}
