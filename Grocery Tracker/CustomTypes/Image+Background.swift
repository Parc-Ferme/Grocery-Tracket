//
//  Image+Background.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//

import SwiftUI

struct DreButton<ShapeType: Shape>: View {

  var image_name   : String
  var shape        : ShapeType
  var image_color  : Color
  var shape_color  : Color
  var scale_factor : CGFloat = 0.45
  var stroke_color : Color?
  var line_width   : CGFloat = 0

  var body: some View {

    GeometryReader { geometry in

      shape
        .fill(shape_color)
        .stroke(stroke_color ?? shape_color, lineWidth: line_width)
        .overlay() {
          Image(systemName: image_name)
            .resizable()
            .scaledToFit()
            .frame(width: geometry.frame(in: .local).width * scale_factor, height: geometry.frame(in: .local).height * scale_factor)
            .foregroundStyle(image_color)
        }
    }
  }
}

#Preview {
  DreButton(image_name: "trash.circle", shape: Circle(), image_color: .white, shape_color: .green, stroke_color: .black, line_width: 50)
}
