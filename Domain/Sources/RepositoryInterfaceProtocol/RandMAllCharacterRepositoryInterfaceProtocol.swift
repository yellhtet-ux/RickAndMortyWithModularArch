// The Swift Programming Language
// https://docs.swift.org/swift-book

import Entities

public protocol RandMRepositoryInterfaceProtocol {
    func fetchAllCharacters () async throws -> [RandMCharacterResultEntity]
    func fetchCharacter (id: Int) async throws -> RandMCharacterResultEntity
}
