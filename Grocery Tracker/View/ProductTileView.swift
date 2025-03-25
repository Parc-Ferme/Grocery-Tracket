//
//  ProductTileView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 24/03/25.
//

import SwiftUI

struct ProductTileView: View {

  @Environment(\.dismiss) private var dismiss

  var title : String

  var body: some View {

    NavigationStack {
      TileVerticalScrollView(grocery_items: ["Strawberry", "Mullberry", "Blueberry", "Oat Milk", "Turnip", "Tomato"], text_color: .black, spacing_items: 20)
        .padding(Constants.paddingStandard)
      .navigationTitle(title)
      .navigationBarBackButtonHidden(true)
      .navigationBarTitleDisplayMode(.inline)
      .toolbarBackground(.white, for: .navigationBar)
      .toolbar {
          ToolbarItem(placement: .topBarLeading) {
              BackButtonView(action: dismiss)
          }
      }
    }


  }
}

#Preview {
  ProductTileView(title: "Expiring Soon")
}
