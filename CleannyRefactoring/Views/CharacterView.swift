//
//  CharacterView.swift
//  CleannyRefactoring
//
//  Created by 종건 on 2022/10/01.
//

import SwiftUI

struct CharacterView: View {
    @State private var cleans = [("분리수거","DisposeTrash"), ("세탁","Laundary"), ("욕실청소","ToiletCleaning"), ("바닥청소","FloorCleaning"), ("설거지", "DishWashing"), ("정리정돈","TidyUp")]
    @State private var showModal = false //상태
    var body: some View {
        ZStack {
            Color.MBackground.ignoresSafeArea()
            VStack(spacing: 15) {
                HStack {
                    Spacer()
                    Button {
                        self.showModal.toggle()
                    } label: {
                        Image("Setting")
                            .foregroundColor(Color("MBlue"))
                            .padding(20)
                    }
                    .sheet(isPresented: self.$showModal) {
                        Text("text")
                    }

                    
                }
                Image("Laugh")
                    .resizable() 
                    .scaledToFit()
                let columns = [
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]
                
                LazyVGrid(columns: columns) {
                    ForEach(0..<cleans.count, id: \.self) { idx in
                        VStack (spacing: 9) {
                            ZStack {
                                CircularProgressView()
                                IconView(category: $cleans[idx].1)
                            }
                            Text(cleans[idx].0)
                                .font(
                                    .system(size: 14, weight: .semibold))
                                .foregroundColor(Color.gray)
                        }
                    }
                }.padding(.horizontal, 20)
            }.padding(.bottom, 155)
        }
        
        
        
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
