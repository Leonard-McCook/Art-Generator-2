//
//  Models.swift
//  Art Generator 2
//
//  Created by Leonard McCook-Carr on 4/2/23.
//

import Foundation

enum Constants {
    static let imageSize = "256x256"
    static let n = 1
}

struct GenerationInput: Codable {
    var prompt: String
    var n = Constants.n
    var size = Constants.imageSize
    
    var encodedData: Data? {
        try? JSONEncoder().encode(self)
    }
}
