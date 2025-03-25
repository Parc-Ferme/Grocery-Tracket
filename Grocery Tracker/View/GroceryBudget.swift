//
//  GroceryBudget.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 24/03/25.
//

import SwiftUI

struct GroceryBudget: View {

  @State var budget_left: Double = 100

  var body: some View {

      VStack(alignment: .leading, spacing: 8) {

        Text("Grocery Budget")
          .font(.avenir(.heavy, size: 20))

        ZStack {

          RoundedRectangle(cornerRadius: 15)
            .foregroundStyle(.green.opacity(0.9))


          HStack(spacing: 0) {

            DreButton(image_name: "rectangle.stack", shape: Circle(), image_color: .green, shape_color: .white)
              .scaledToFit()
              .padding([.top, .bottom], Constants.paddingSmall)
              .padding([.trailing, .leading], Constants.paddingXSmall)

            VStack(alignment: .leading) {

              Text("\(budget_left.money)")
                .font(.avenir(.black, size: Constants.fontLarge))
                .foregroundStyle(.white)

              Text("Your monthly budget")
                .font(.avenir(.medium, size: Constants.fontXXSmall))
                .foregroundStyle(.white)
            }

            Spacer()

            NavigationLink(destination: DummyView   ()) {
              DreButton(
                image_name: "chevron.right",
                shape: Circle(),
                image_color: .white,
                shape_color: .white.opacity(Constants.opacityXHigh)
              )
              .scaledToFit()
              .padding([.top, .bottom], Constants.paddingLarge)
              .padding([.trailing, .leading], Constants.paddingXSmall)
            }
          }
        }
        .frame(maxHeight: UIScreen.main.bounds.height * 0.1)
      }
  }
}

#Preview {
  GroceryBudget()
}
