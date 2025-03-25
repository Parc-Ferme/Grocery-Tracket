//
//  ExpiredProductView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 24/03/25.
//

import SwiftUI

struct ExpiredProductTileView: View {

  var body: some View {

    VStack(alignment: .leading, spacing: 10) {

      Text("Expired Products")
        .font(.avenir(.black, size: Constants.fontMedium))

      ZStack {

        RoundedRectangle(cornerRadius: Constants.radiusStandard)
          .foregroundStyle(.white)

        VStack(spacing: 0) {

          HStack(spacing: 0) {

            Text("Total Products")
              .font(.avenir(.heavy, size: Constants.fontMedium))

            DreText(text: "12", shape: Circle(), text_color: .black, stroke_color: .black.opacity(Constants.opacityXHigh), shape_color: .clear)
              .frame(width: 30, height: 30)
              .padding(Constants.paddingSmall)

            Spacer()


            NavigationLink(destination: ProductTileView(title: "Expired Products")) {

              Text("View all")
                .foregroundStyle(.green.opacity(0.9))
                .font(.avenir(.black, size: Constants.fontSmall))
            }

          }

          //TODO: - Check Inside
          TileHorizontalScrollView()
            .padding(.bottom, 20)
        }
        .padding(.horizontal, Constants.paddingXSmall)
      }
    }
  }
}

#Preview {
  ExpiredProductTileView()
}
