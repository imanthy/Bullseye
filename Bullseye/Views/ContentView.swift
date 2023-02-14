//
//  ContentView.swift
//  Bullseye
//
//  Created by Anthy Chen on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionView(game: $game)
                SliderView(sliderValue: $sliderValue)
                HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            }
        }
    }
}

struct InstructionView: View {
    
    @Binding var game: Game
    
    var body: some View {
        InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
            .padding(.leading, 30.0)
            .padding(.trailing, 30.0)
        BigNumberText(text: String(self.game.target))
    }
}

struct SliderView: View {
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            SliderLabelText(text: "1")
            Slider(value: self.$sliderValue, in: 1...100)
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButtonView: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button("Hit Me".uppercased()) {
            self.alertIsVisible = true
        }
        .bold()
        .font(.title3)
        .padding(20.0)
        .foregroundColor(.white)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .cornerRadius(21)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(.white, lineWidth: 2.0)
        )
        .alert(Text("Hello there!"), isPresented: self.$alertIsVisible) {
            Button("Awesome!") {}
        } message: {
            let roundedValue = Int(self.sliderValue.rounded())
            Text("The slider value is \(roundedValue)\n Your score is \(self.game.calculatePoints(sliderValue: roundedValue))")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
