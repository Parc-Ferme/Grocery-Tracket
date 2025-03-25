//
//  CustomTabBarView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

struct CustomTabBarView: View {

  @Binding var activeTab: TabModel
  var body: some View {

    ZStack {

      HStack(spacing: 45) {

        ForEach(TabModel.allCases, id:\.rawValue) { tab in

          if tab == .scan {
            Button(action: {self.activeTab = tab}) {
              Image(systemName: tab.rawValue)
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .foregroundColor(.white)
                .background() {
                  Circle()
                    .fill(.green.opacity(0.8))
                    .stroke(Color.green.opacity(0.8), lineWidth: 2)
                    .frame(width: 65, height: 65)
                }

            }
          } else {
            Button(action: {self.activeTab = tab}) {
              Image(systemName: tab.rawValue)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(activeTab == tab ? .green.opacity(0.8) : .black.opacity(0.6))

            }
          }
        }
      }
    }
  }
}

#Preview {

  @Previewable @State var activeTab: TabModel = .home
  CustomTabBarView(activeTab: $activeTab)
}
