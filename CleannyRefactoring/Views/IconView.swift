//
//  IconView.swift
//  CleannyRefactoring
//
//  Created by 전지민 on 2022/10/06.
//

import SwiftUI

struct IconView: View {
    
    @Binding var category: String
    
    var body: some View {
        Button {
             
        } label: {
            Circle()
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .shadow(color: .SBlue.opacity(0.15), radius: 3, x: 1, y: 1)
                .overlay(Image(category).foregroundColor(Color.MBlue))
        }
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(category: .constant("DishWashing"))
    }
}
