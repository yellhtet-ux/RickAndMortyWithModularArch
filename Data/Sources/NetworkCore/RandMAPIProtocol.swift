//
//  RandMAPIProtocol.swift
//  Data
//
//  Created by Andrew Hardin on 5/22/25.
//

public protocol RandMAPIProtocol {
    func allCharacters () async throws -> RandMAPICharacters 
    func characterDetail (id: Int) async throws -> RandMAPICharacterResult
}
