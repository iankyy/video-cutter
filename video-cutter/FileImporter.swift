//
//  FileImporter.swift
//  video-cutter
//
//  Created by Pedro ianky Rodrigues on 16/09/25.
//
import SwiftUI


struct FileImporter: View {
    @State private var importing = false
    
    var body: some View {
        Button("seide nada") {
            
        }
        Button("Import") {
            importing = true 
        }
        .fileImporter(
            isPresented: $importing,
            allowedContentTypes: [.plainText]
        ) { result in
            switch result {
            case .success(let file):
                print(file.absoluteString)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    FileImporter()
}
