//
//  UseCase.swift
//  Domain
//
//  Created by Andrew Hardin on 5/20/25.
//

import UseCaseInterfaceProtocol
import RepositoryInterfaceProtocol
import Entities

public class RandMAllCharacterUseCase : RandMUseCaseInterfaceProtocol {    
    public let repository : RandMRepositoryInterfaceProtocol
    
    public init(repository: RandMRepositoryInterfaceProtocol) {
        self.repository = repository
    }
    
    public func execute() async throws -> [RandMCharacterResultEntity] {
        return try await repository.fetchAllCharacters() 
    }
    
    public func execute(id: Int) async throws -> RandMCharacterResultEntity {
        return try await repository.fetchCharacter(id: id)
    } 
}
