//
//  ContentView.swift
//  BindingSample
//
//  Created by Jovin Menezes on 21/04/20.
//  Copyright © 2020 Jovin Menezes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  let episode = Episodes(name: "Jovin", Track: "first")
    @ObservedObject var fancyTimer = FancyTimer()
    @State private var isPlaying = true
    var body: some View {
        VStack{
            Text("\(fancyTimer.value)")
                .font(.title)
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(isPlaying ?  .green : .red)
            Text(self.episode.Track)
                .foregroundColor(.secondary)
            PlayButton(isPlaying: $isPlaying)
        }
    }
}
struct PlayButton: View {
    @Binding var isPlaying : Bool
    var body: some View {
        Button(action: {self.isPlaying.toggle()}) {
            Text("Play")
        }
    .padding(12)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
