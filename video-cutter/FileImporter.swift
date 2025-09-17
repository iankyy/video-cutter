import SwiftUI
import UniformTypeIdentifiers

struct FileImporter: View {
    @State private var importing = false
    @State private var selectedFileUrl: URL?
    @State private var isClicked = false;

    var body: some View {
        VStack {
            Text("\(isClicked)")
            Button("import file"){
                importing.toggle()
            }
            .fileImporter(isPresented: $importing,
                          allowedContentTypes: [.image]
            ) { result in
                switch result{
                case .success(let url):
                    selectedFileUrl = url
                case .failure(let error):
                    print("error: \(error)")
                }
                
            }
        }
        .padding()
    }
}

#Preview{
    FileImporter()
}
