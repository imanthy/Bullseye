//
//  TextViews.swift
//  Bullseye
//
//  Created by Anthy Chen on 2/10/23.
//

import SwiftUI

struct InstructionText: View {
    
    var text: String!
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    
    var text: String!
    
    var body: some View {
        Text(text)
            .kerning(1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    
    var text: String!
    
    var body: some View {
        Text(text)
            .bold()
            .font(.headline)
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct LabelText: View {
    
    var text: String!
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(1.5)
            .font(.caption)
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            SliderLabelText(text: "999")
            LabelText(text: "lable")
        }
    }
}
