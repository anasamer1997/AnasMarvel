//
//  HomeScreen.swift
//  AnasTaskMarvel
//
//  Created by anas amer on 29/12/2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            HStack{
                Image("icn-nav-marvel", bundle: nil)
                    .resizable()
                    .scaledToFit()
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .overlay(alignment: .trailing, content: {
                Button(action: {
                    
                }, label: {
                    Image("icn-nav-search")
                        .foregroundStyle(.red)
                })
                .frame(width: 20)
                .padding(.horizontal)
            })
            .background(Color.black)
            
            CharacterView(character: dummyCharacters[0])
        }
    }
}

#Preview {
    HomeScreen()
}
