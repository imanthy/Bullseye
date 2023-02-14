//
//  RoundViews.swift
//  Bullseye
//
//  Created by Anthy Chen on 2/13/23.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedImageViewFilled: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
//        Circle()
//            .fill(Color("ButtonFilledBackgroundColor"))
//            .frame(width: 56.0, height: 56.0)
//            .overlay(
//                Image(systemName: systemName)
//                    .font(.title)
//                    .foregroundColor(Color("ButtonFilledTextColor"))
//            )
    }
}

struct RoundedRectTextView: View {
    
    var text: String
        
    var body: some View {
        RoundedRectangle(cornerRadius: 21.0)
            .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            .frame(width: 68.0, height: 56.0)
            .overlay(
                Text(text.uppercased())
                    .bold()
                    .kerning(-0.2)
                    .font(.title3)
                    .foregroundColor(Color("TextColor"))
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedRectTextView(text:"999")
        }
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
