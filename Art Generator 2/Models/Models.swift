//
//  Models.swift
//  Art Generator 2
//
//  Created by Leonard McCook-Carr on 4/2/23.
//



import SwiftUI

enum Constants {
    static let imageSize = "256x256"
    static let n = 4
}

struct GenerationInput: Codable {
    var prompt: String
    var n = Constants.n
    var size = Constants.imageSize
    
    var encodedData: Data? {
        try? JSONEncoder().encode(self)
    }
}

struct DalleImage: Identifiable {
    var id = UUID()
    var uiImage: UIImage?
}

struct ResponseModel: Codable {
    struct Data: Codable {
        let url: URL
    }
    let created: Date
    let data: [Data]
}

