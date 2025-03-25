//
//  TileScrollView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 24/03/25.
//

import SwiftUI

struct TileHorizontalScrollView: View {

  var grocery_items : [String] = ["Strawberry", "Mullberry", "Blueberry", "Oat Milk", "Turnip", "Tomato"]

  var body: some View {

    ScrollView(.horizontal, showsIndicators: false) {

      LazyHStack(spacing: 0) {

        ForEach(grocery_items, id:\.self) { grocery_item in

          VStack(spacing: 0) {

            Image(grocery_item)
              .resizable()
              .scaledToFit()
              .clipShape(Circle())
              .frame(width: 100, height: 100)

            Text(grocery_item)
              .font(.avenir(.book, size: 14))
          }
        }
      }
    }
  }
}

#Preview {
  TileHorizontalScrollView()
}
