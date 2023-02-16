//
//  Shapes.swift
//  Bullseye
//
//  Created by Anthy Chen on 2/13/23.
//

import SwiftUI

struct Shapes: View {
    
    @State private var wideShapes = true
    
    var body: some View {
        VStack {
            if !wideShapes {
                Circle()
                    .strokeBorder(.blue, lineWidth: 20.0)
                    .frame(width: 200.0, height: 100.0)
                    .transition(.scale)
            }
            RoundedRectangle(cornerRadius: 20.0)
                .fill(.blue)
                .frame(width: wideShapes ? 200.0 : 100, height: 100.0)
            Capsule()
                .fill(.blue)
                .frame(width: wideShapes ? 200.0 : 100, height: 100.0)
            Ellipse()
                .fill(.blue)
                .frame(width: wideShapes ? 200.0 : 100, height: 100.0)
            Button("Animate") {
                withAnimation {
                    wideShapes.toggle()
                }
            }
        }
        .background(.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
