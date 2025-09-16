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
    @State private var isShowingPicker: Bool = false;
    
    @Environment(\.openWindow) private var openWindow;
    
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
            
            Button("Open FilesManager") {
                openWindow(id:"hell-new-window")
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
