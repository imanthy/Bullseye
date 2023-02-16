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

struct BodyText: View {
    
    var text: String!
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12)
            .foregroundColor(Color("TextColor"))
    }
}

struct BottonText: View {
    
    var text: String!
    
    var body: some View {
        Text(text.capitalized(with: .current))
            .bold()
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .cornerRadius(12)
    }
}

struct ScoreText: View {
    
    var score: Int
    
    var body: some View {
        Text(String(score))
            .font(.title3)
            .kerning(-0.2)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct DateText: View {
    
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
            .font(.title3)
            .kerning(-0.2)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct BigBoldText: View {
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .font(.title)
            .fontWeight(.black)
            .kerning(2)
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
            BodyText(text: "You scored 200 Points\n🎉🎉🎉")
            BottonText(text: "Start new round")
            ScoreText(score: 459)
            DateText(date: Date())
            BigBoldText(text: "leaderboard")
        }
        .padding()
    }
}
