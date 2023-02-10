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
        VStack {
            Text("🎯🎯🎯\nPut the bullseye as close as you can to")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(self.game.target))
                .kerning(1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                    .font(.headline)
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
                    .bold()
                    .font(.headline)
            }
            Button("Hit Me") {
                self.alertIsVisible = true
            }
            .alert(Text("Hello there!"), isPresented: self.$alertIsVisible) {
                Button("Awesome!") {}
            } message: {
                let roundedValue = Int(self.sliderValue.rounded())
                Text("The slider value is \(roundedValue)\n Your score is \(self.game.calculatePoints(sliderValue: roundedValue))")
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
