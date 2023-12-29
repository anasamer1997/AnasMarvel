//
//  CharacterView.swift
//  AnasTaskMarvel
//
//  Created by anas amer on 29/12/2023.
//

import SwiftUI
import SDWebImageSwiftUI
struct CharacterView: View {
    
    private var character:Character
    init(character: Character) {
        self.character = character
    }
    
    var body: some View {
        VStack(spacing:15){
            AsyncImage(url: URL(string:character.thumbnail.path)) { image in
                      image
                          .resizable()

                  } placeholder: {
                      ProgressView()
                  }
        }
        .frame(height: 250)
        .frame(maxWidth: .infinity)
        .background(.red)
        .overlay(alignment: .bottomLeading) {
            ZStack{
                Image("bg-cell-title")
                    .frame(height: 50)
                Text(character.name)
            }
            .padding(.leading,26)
        }
    }
}

#Preview {
    CharacterView(character: dummyCharacters[0])
}
