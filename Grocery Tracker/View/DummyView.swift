//
//  DummyView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

struct DummyView: View {

  var body: some View {

    ZStack {

      Color.green.opacity(0.9)
        .ignoresSafeArea(edges: .all)

      Text("The path ahead is under construction,\n so please take a U-turn.")
        .font(.avenir(.black, size: 20))
        .foregroundStyle(.white)
    }
  }
}

#Preview {
  DummyView()
}
