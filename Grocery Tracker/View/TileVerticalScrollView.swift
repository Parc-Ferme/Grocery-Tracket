//
//  TileVerticalScrollView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

struct TileVerticalScrollView: View {

  var grocery_items : [String] = ["Strawberry", "Mullberry", "Blueberry"]
  var date          : String   = "25/03/25"
  var text_color    : Color    = .white
  var spacing_items : CGFloat  = 8

  var body: some View {

    ScrollView(.vertical, showsIndicators: false) {

      LazyVStack(alignment: .leading, spacing: spacing_items) {

        ForEach(grocery_items, id: \.self) { grocery_item in

          HStack(spacing: 15) {

            Image(grocery_item)
              .resizable()
              .frame(width: 100, height: 80)
              .scaledToFit()
              .clipShape(RoundedRectangle(cornerRadius: 10))

            VStack(alignment: .leading, spacing: 5) {

              Text(grocery_item)
                .font(.avenir(.heavy, size: 18))
                .foregroundStyle(text_color)

              Text("Expiry date: \(date)")
                .font(.avenir(.medium, size: 13))
                .foregroundStyle(text_color)

              Button(action: {}) {

                Text("View details")
                  .font(.avenir(.medium, size: 12))
                    .foregroundStyle(text_color)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                          .stroke(text_color.opacity(0.8), lineWidth: 1.5)
                    )
              }
            }
          }
        }

      }
    }
  }
}

#Preview {
  TileVerticalScrollView()
}
