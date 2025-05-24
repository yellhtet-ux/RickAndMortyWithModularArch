//
//  RandMRepository.swift
//  Data
//
//  Created by Andrew Hardin on 5/22/25.
//

import RepositoryInterfaceProtocol
import NetworkCore
import Entities


public class RandMRepository: RandMRepositoryInterfaceProtocol {
    
    private let randMAPI: RandMAPIProtocol
    
    public init(randMAPI: RandMAPIProtocol) {
        self.randMAPI = randMAPI
    }
    
    public func fetchCharacter(id: Int) async throws -> RandMCharacterResultEntity {
        return try await randMAPI.characterDetail(id: id) as RandMCharacterResultEntity
    }
    
    public func fetchAllCharacters() async throws -> [RandMCharacterResultEntity] {
        return try await randMAPI.allCharacters().results.map {$0 as! RandMAPICharacterResult}
    }
}


extension RandMAPICharacters : RandMCharacterEntity {
    public var info: RandMCharacterInfo {apiInfo}
    public var results: [RandMCharacterResultEntity] {apiResults}
}
extension RAndMAPICharacterInfo : RandMCharacterInfo {
    public var count: Int {apiCount}
    public var pages: Int {apiPages}
    public var next: String? {apiNext}
    public var prev: String? {apiPrev}
}
extension RandMAPICharacterResult : RandMCharacterResultEntity {
    public var name: String {apiName}
    public var status: String {apiStatus}
    public var species: String {apiSpecies}
    public var type: String {apiType}
    public var gender: String {apiGender}
    public var image: String {apiImage}
    public var episode: [String] {apiEpisode}
    public var url: String {apiUrl}
    public var created: String {apiCreated}
    public var origin: RandMCharacterOrigin { apiOrigin}
    public var location: RandMCharacterLocation {apiLocation}
}

extension RandMAPICharacterOrigin : RandMCharacterOrigin {}
extension RandMAPICharacterLocation : RandMCharacterLocation {}
