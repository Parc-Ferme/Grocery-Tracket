//
//  HomeView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

struct HomeView: View {
  
  var body: some View {

    ZStack {

      NavigationStack {

        VStack(spacing: 0) {

          HeaderView()

          ScrollView(.vertical, showsIndicators: false) {

            CarouselView()

            GroceryBudget()

            ExpiredProductTileView()

            ExpiringSoonTileView()

            FamilyTileView()
          }
        }
        .padding(.horizontal, 15)
      }
    }
  }
}

#Preview {
  HomeView()
}
