//
//  ExpiringSoonTileView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

struct ExpiringSoonTileView: View {

  var body: some View {

    VStack(alignment: .leading, spacing: 10) {

      Text("Expiring Soon")
        .font(.avenir(.heavy, size: Constants.fontMedium))

      ZStack {

        RoundedRectangle(cornerRadius: Constants.radiusStandard)
          .foregroundStyle(.green.opacity(0.9))

        VStack(spacing: 0) {

          HStack(spacing: 0) {

            Text("Total Products")
              .font(.avenir(.heavy, size: Constants.fontMedium))
              .foregroundStyle(.white)

            DreText(text: "12", shape: Circle(), text_color: .white, stroke_color: .white.opacity(Constants.opacityStandard), shape_color: .clear)
              .frame(width: 30, height: 30)
              .padding(Constants.paddingSmall)

            Spacer()

            NavigationLink(destination: ProductTileView(title: "Expiring Soon" )) {

              Text("View all")
                .foregroundStyle(.white)
                .font(.avenir(.black, size: Constants.fontSmall))
            }
          }

          // TODO: Check Inside
          TileVerticalScrollView()
            .padding(.bottom, 20)
        }
        .padding(.horizontal, Constants.paddingXSmall)
      }
    }
  }
}

#Preview {
  ExpiringSoonTileView()
}
