//
//  CarouselView.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 24/03/25.
//

import SwiftUI

struct CarouselView: View {

  let banners = ["B1", "B2", "B3", "B4"]

  @State private var currentIndex = 0
  @State private var timer: Timer?

  var body: some View {

    VStack {

      TabView(selection: $currentIndex) {

        ForEach(0..<banners.count, id: \.self) { index in

          Image(banners[index])
            .resizable()
            .scaledToFill()
            .frame(width: 370, height: 125)
            .cornerRadius(15)
            .padding()
            .tag(index)
        }
      }
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Hide default dots
      .animation(.easeInOut, value: currentIndex)
      .onAppear() { StartTimer () }
      .onDisappear { timer?.invalidate() }
    }
    .ignoresSafeArea(edges: .leading)
    .ignoresSafeArea(edges: .trailing)
    .frame(height: 151)

  }

  private func StartTimer() {

    timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in

      // Change the currentIndex every 5 seconds and loop back to 0 when reaching the end
      withAnimation(.easeInOut) {
        currentIndex = (currentIndex + 1) % banners.count
      }
    }
  }
}



#Preview {
  CarouselView()
}
