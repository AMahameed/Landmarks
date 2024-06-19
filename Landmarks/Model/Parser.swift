//
//  Parser.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import Foundation

var landmarks: [Landmark] = parse("landmarkData.json")

func parse<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("coulnot find the file name \(fileName)")
    }
    
    do {
        data = try Data(contentsOf: fileURL)
    } catch {
        fatalError("coulnot load the file name \(fileName): \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("couldnot parse the data \(data): \n\(error)")
    }
}

