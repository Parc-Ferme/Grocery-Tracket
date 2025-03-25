//
//  Double+Money.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 24/03/25.
//

import SwiftUI

extension Double {

  var money: String {
    return String(format: "$%.1f", self)
  }
}
