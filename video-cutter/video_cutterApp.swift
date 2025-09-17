//
//  video_cutterApp.swift
//  video-cutter
//
//  Created by Pedro ianky Rodrigues on 14/09/25.
//

import SwiftUI

@main
struct video_cutterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        WindowGroup(id: "hell-new-window") {
            FileImporter()
        }
        
    }
}
