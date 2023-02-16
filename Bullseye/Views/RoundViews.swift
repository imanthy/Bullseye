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
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedImageViewFilled: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
//        Circle()
//            .fill(Color("ButtonFilledBackgroundColor"))
//            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
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
        RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
            .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
            .overlay(
                Text(text.uppercased())
                    .bold()
                    .kerning(-0.2)
                    .font(.title3)
                    .foregroundColor(Color("TextColor"))
            )
    }
}

struct RoundedTextView: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle()
                    .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedRectTextView(text:"999")
            RoundedTextView(text: "1")
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
