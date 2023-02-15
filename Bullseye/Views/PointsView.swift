//
//  PointsView.swift
//  Bullseye
//
//  Created by Anthy Chen on 2/14/23.
//

import SwiftUI

struct PointsView: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        
        let roundedValue = Int(self.sliderValue.rounded())
        let points = self.game.calculatePoints(sliderValue: roundedValue)
        
        VStack (spacing: 10) {
            InstructionText(text: "The slider value is")
            BigNumberText(text: String(roundedValue))
            BodyText(text: "You scored \(points) points\n🎉🎉🎉")
            Button {
                alertIsVisible = false
                game.startNewRound(points: points)
            } label: {
                BottonText(text: "Start new round")
            }

        }
            .padding()
            .frame(maxWidth: 300)
            .background(Color("BackgroundColor"))
            .cornerRadius(21)
            .shadow(radius: 10, x: 5, y: 5)
    }
    
    struct PointsView_Previews: PreviewProvider {
        static var previews: some View {
            PointsView(alertIsVisible: .constant(false), sliderValue: .constant(50), game: .constant(Game()))
            PointsView(alertIsVisible: .constant(false), sliderValue: .constant(50), game: .constant(Game()))
                .preferredColorScheme(.dark)
        }
    }
    
}
