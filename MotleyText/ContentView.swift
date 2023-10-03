//
//  ContentView.swift
//  MotleyText
//
//  Created by Сергей Прокопьев on 03.10.2023.
//

import SwiftUI

struct ContentView: View {

    @State private var containerWidth: CGFloat = 100

    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .border(Color.red, width: 1)
                    .frame(width: containerWidth, height: 200)
                VStack {
                    Text("Марафон по SUI ")
                        .font(.system(size: 18))
                        .foregroundColor(.gray) +
                    Text("Какой-то текст с разными ")
                        .font(.system(size: 20))
                        .foregroundColor(.blue) +
                    Text("размером шрифта и цветом.")
                        .font(.system(size: 15))
                        .foregroundColor(.green)
                }
                .frame(width: containerWidth)
                .padding()
                .multilineTextAlignment(.leading)
            }

            Slider(value: $containerWidth, in: 100...300, step: 1)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
