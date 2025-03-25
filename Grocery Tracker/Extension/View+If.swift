//
//  View+If.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

extension View {

  @ViewBuilder
  func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {

    if condition { transform(self)}
    else { self }
  }
}
