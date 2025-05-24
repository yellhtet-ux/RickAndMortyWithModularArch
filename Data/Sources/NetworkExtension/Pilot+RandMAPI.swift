//
//  Pilot+RandMAPI.swift
//  Data
//
//  Created by Andrew Hardin on 5/22/25.
//

import Pilot
import Foundation
import NetworkCore

extension Pilot : RandMAPIProtocol where R == RandMRoute {
    public func characterDetail(id: Int) async throws -> RandMAPICharacterResult {
        let result = try await request(.character(id: id),target: RandMAPICharacterResult.self,decoder: .apiDecoder) 
        print("[MyApp][SUCCESS] \(result)")
        return result
    }
    
    public func allCharacters() async throws -> RandMAPICharacters {
        let result = try await request(.allCharacters,target: RandMAPICharacters.self,decoder: .apiDecoder)
        print("[MyApp][SUCCESS] \(result)")
        return result
    }
}
