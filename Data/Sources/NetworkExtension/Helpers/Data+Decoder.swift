//
//  Data+Decoder.swift
//  Data
//
//  Created by Andrew Hardin on 5/22/25.
//

import Foundation

extension Data {
    public func decoded <T: Decodable> (decoder: JSONDecoder = .apiDecoder) -> T {
        guard let object = try? decoder.decode(T.self, from: self) else {fatalError("Emable to Decode: \(T.self)")}
        return object
    }
}
