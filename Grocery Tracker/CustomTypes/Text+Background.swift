//
//  Text+Background.swift
//  Grocery Tracker
//
//  Created by Ankit Yadav on 25/03/25.
//


import SwiftUI

struct DreText<ShapeType: Shape>: View {

  var text         : String
  var shape        : ShapeType
  var text_color   : Color
  var stroke_color : Color?
  var shape_color  : Color
  var height       : CGFloat?
  var text_size    : CGFloat?

  var body: some View {

    GeometryReader { geometry in

      shape
        .fill(shape_color)
        .stroke(stroke_color ?? shape_color, lineWidth: 2)
        .if(height != nil) { shape in

          shape.frame(height: height!)
        }
        .overlay() {

          Text(text)
            .font(.avenir(.black, size: text_size ?? geometry.frame(in: .local).width * 0.5))
            .foregroundStyle(text_color)
        }
    }
  }
}

#Preview {
  DreText(text: "12", shape: Circle(), text_color: .white, shape_color: .green, height: 40, text_size: 20)
}

