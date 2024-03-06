//
//  WordView.swift
//  YokoSo!-Practice
//
//  Created by 水原　樹 on 2024/03/06.
//

import SwiftUI

struct WordView: View {
    @State var inputText = ""
    var body: some View {
        HStack {
            TextField("keyword", text: $inputText, prompt: Text("Search KeyWord!"))
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if !inputText.isEmpty {
                            Button(action: {
                                self.inputText = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
        }
    }
}


#Preview {
    WordView()
}
