//
//  FetchingView.swift
//  Art Generator 2
//
//  Created by Leonard McCook-Carr on 4/17/23.
//

import SwiftUI

struct FetchingView: View {
    @State private var rotation = 0.0
    var body: some View {
        ZStack {
            Image("Artist")
            Text("⭐️").font(.system(size: 70))
                .offset(x: -135)
                .rotationEffect(.degrees(rotation))
                .animation(Animation.linear
                    .speed(0.2)
                    .repeatForever(autoreverses: false), value: rotation)
        }
        .onAppear {
            rotation = 360
        }
    }
}

struct FetchingView_Previews: PreviewProvider {
    static var previews: some View {
        FetchingView()
    }
}
