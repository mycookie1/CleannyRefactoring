//
//  CircularProgressView.swift
//  CleannyRefactoring
//
//  Created by 전지민 on 2022/10/05.
//

import SwiftUI

struct CircularProgressView: View {
    var progress = 75.0
    var lineWidth = 20.0
    
    var body: some View {
        let angularGrident = AngularGradient(
            gradient: Gradient(colors: [.GMBlue, .MBlue]),
            center: .center,
            startAngle: .degrees(0),
            endAngle: .degrees(progress*3.6))
        
        ZStack {
            //progress
            Circle()
                .foregroundColor(Color.LGray)
                .frame(width: 96, height: 96)
                .overlay(
                    Circle()
                        .stroke(Color.MBackground.opacity(0.4), lineWidth: 4)
                        .shadow(color: .MBlack.opacity(0.2), radius: 4, x: -4, y: 0)
                        .clipShape(Circle())
                        .frame(width: 98, height: 98)
                )
            
            //progress bar
            Circle()
                .trim(from: 0, to: progress * 0.01)
                .stroke(angularGrident, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .frame(width: 85, height: 85)

            Circle()
                .foregroundColor(Color.MBackground)
                .frame(width: 73, height: 73)
                .overlay(
                    Circle()
                        .trim(from: 0, to: CGFloat(progress * 0.01))
                        .foregroundColor(.MBackground)
                        .shadow(color: .white, radius: 4, x: -4, y: 0)
//                        .frame(width: 77, height: 77)
//                        .clipShape(Circle().trim(from: 0, to: CGFloat(progress * 0.01)))
                )
        }
        .rotationEffect(.degrees(-90))
        
        
    }
}


struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView()
    }
}
