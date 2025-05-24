//
//  Container+Injection.swift
//  RickAndMortyModularArch
//
//  Created by Andrew Hardin on 5/23/25.
//

import Factory
import UseCaseInterfaceProtocol
import UseCases
import RepositoryInterfaceProtocol
import Repositories
import Home
import Pilot
import NetworkCore
import NetworkExtension

extension Container {
    
    public var api: Factory<RandMAPIProtocol> {
        self {
            Pilot<RandMRoute>()
        }.cached
    }
    
    public var viewModel: Factory<RandMHomeViewModel> {
        self {
            RandMHomeViewModel(randMCharacterUseCase: self.useCase())
        }.cached
    }
    
    public var useCase : Factory<RandMUseCaseInterfaceProtocol> {
        self {
            RandMAllCharacterUseCase(repository: self.repository())
        }.cached
    }
    
    public var repository : Factory<RandMRepositoryInterfaceProtocol> {
        self {
            RandMRepository(randMAPI: self.api())
        }.cached
    }
    
}
