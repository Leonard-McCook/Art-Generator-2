//
//  Art_Generator_2App.swift
//  Art Generator 2
//
//  Created by Leonard McCook-Carr on 4/2/23.
//

import SwiftUI

@main
struct AppEntry: App {
    var body: some Scene {
        WindowGroup {
            DALLEImagesView()
                .onAppear {
                    Task {
                        let sample = GenerationInput(prompt: "A girl with long flowing hair at the beach sitting down in the sunlight anime style" )
                        if let data = sample.encodedData {
                            try await APIService().fetchImages(with: data)
                        }
                    }
                }
        }
    }
}
