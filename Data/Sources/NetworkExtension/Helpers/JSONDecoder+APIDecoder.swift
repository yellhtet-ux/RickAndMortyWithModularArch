//
//  JSONDecoder+APIDecoder.swift
//  Data
//
//  Created by Andrew Hardin on 5/22/25.
//

import Foundation

extension JSONDecoder {
    public static let apiDecoder : JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()
}

