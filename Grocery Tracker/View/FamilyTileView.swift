//
//  FamilyTileView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

struct FamilyTileView: View {

  var adult_count = 2
  var children_count = 1

  var body: some View {

    ZStack {

      RoundedRectangle(cornerRadius: Constants.radiusStandard)
        .fill(Color.white)

      VStack(spacing: 12) {

        HStack(spacing: 0) {

          DreButton(image_name: "person.3", shape: Circle(), image_color: .white, shape_color: .green.opacity(0.9), scale_factor: 0.7)
            .scaledToFit()
            .frame(width: 50, height: 50)
            .padding(.trailing, Constants.paddingSmall)

          Text("Total Family Members")
            .font(.avenir(.heavy, size: Constants.fontMedium))

          DreText(text: "4", shape: Circle(), text_color: .black, stroke_color: .black.opacity(Constants.opacityXHigh), shape_color: .clear)
            .frame(width: 30, height: 30)
            .padding(Constants.paddingSmall)

          Spacer()
        }

          ZStack {

            RoundedRectangle(cornerRadius: Constants.radiusStandard)
              .fill(Color.black.opacity(0.04))

            HStack(spacing: 35) {

              VStack(spacing: 5) {

                Text("Adults")
                  .font(.avenir(.medium, size: 15))
                  .foregroundStyle(.green)

                Text("\(adult_count)")
                  .font(.avenir(.black, size: 24))
                  .foregroundStyle(.black)
              }

              RoundedRectangle(cornerRadius: Constants.radiusLarge)
                .frame(width: 3, height: 25)
                .foregroundStyle(.black.opacity(0.25))

              VStack(spacing: 5) {

                Text("Children's")
                  .font(.avenir(.medium, size: 15))
                  .foregroundStyle(.green)

                Text("\(children_count)")
                  .font(.avenir(.black, size: 24))
                  .foregroundStyle(.black)
              }
            }
          }
          .scaledToFit()

        NavigationLink(destination: DummyView()) {

          RoundedRectangle(cornerRadius: Constants.radiusLarge)
            .fill(Color.clear)
            .stroke(Color.black.opacity(0.1), lineWidth: 2)
            .frame(height: 50)
            .overlay(

              Text("View")
                .font(.avenir(.black, size: Constants.fontMedium))
                .foregroundStyle(.green.opacity(0.9))
            )

        }
      }
      .padding(Constants.paddingXSmall)
    }
  }
}

#Preview {
  FamilyTileView()
}
