//
//  ContentView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 24/03/25.
//

import SwiftUI

struct MainView: View {

  @State private var activeTab: TabModel = .home

  var body: some View {

    ZStack(alignment: .top) {


      TabView(selection: $activeTab) {

        Tab.init(value: .home) {
          HomeView()
            .toolbarVisibility(.hidden, for: .tabBar)
        }

        Tab.init(value: .favorites) {
          DummyView()
            .toolbarVisibility(.hidden, for: .tabBar)
        }

        Tab.init(value: .scan) {
          DummyView()
            .toolbarVisibility(.hidden, for: .tabBar)
        }

        Tab.init(value: .notifications) {
          DummyView()
            .toolbarVisibility(.hidden, for: .tabBar)
        }

        Tab.init(value: .profile) {
          DummyView()
            .toolbarVisibility(.hidden, for: .tabBar)
        }
      }
    }
    CustomTabBarView(activeTab: $activeTab)
  }
}
#Preview {
  MainView()
}
