//
//  HeaderView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

struct HeaderView: View {

  var body: some View {

    HStack(spacing: 0) {

      DreButton(image_name: "qrcode.viewfinder", shape: Circle(), image_color: .white, shape_color: .green.opacity(0.9))
        .scaledToFit()
        .padding([.top, .bottom], Constants.paddingStandard)
        .padding([.trailing, .leading], Constants.paddingXSmall)

      Text("Grocery Tracker")
        .font(.avenir(.heavy, size: Constants.fontMedium))

      Spacer()
      
      Button(action: {print("Subscribed")}) {

        HStack(alignment: .center, spacing: Constants.spacingXSmall) {
          Image(systemName: "crown.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 17, height: 17)
            .foregroundStyle(.white)
          Text("Subscribe")
            .font(.avenir(.heavy, size: Constants.fontXSmall))
            .foregroundStyle(.white)
        }
        .padding(.vertical, Constants.paddingXSmall)
        .padding(.horizontal, Constants.paddingStandard)
        .background() {

          RoundedRectangle(cornerRadius: Constants.radiusLarge)
            .fill(Color.green.opacity(0.9))
        }
      }
    }
    .frame(height: UIScreen.main.bounds.height * 0.1)
  }
}

#Preview {
  HeaderView()
}
