//
//  JSOnEncoder+APIEncoder.swift
//  Data
//
//  Created by Andrew Hardin on 5/22/25.
//

import Foundation

extension JSONEncoder {
    public static let apiEncoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder
    }()
}
