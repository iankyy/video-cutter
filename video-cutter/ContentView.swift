//
//  ContentView.swift
//  swift-learner
//
//  Created by Pedro ianky Rodrigues on 14/09/25.
//

import SwiftUI
import AVKit
import PhotosUI

struct ContentView: View {
    
    @State private var player = AVPlayer(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!);
    
    @State private var selectedItem: [PhotosPickerItem] = [];
    
    var body: some View {
        VStack {
            Image(systemName: "widget.large")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            VideoPlayer(player: player)
                .ignoresSafeArea();
            
            PhotosPicker(selection: $selectedItem, matching: .videos) {
                Text("select something boy")
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
