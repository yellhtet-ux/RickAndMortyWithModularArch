//
//  UseCaseInterfaceProtocol.swift
//  Domain
//
//  Created by Andrew Hardin on 5/20/25.
//

import Entities

public protocol RandMUseCaseInterfaceProtocol {
    func execute () async throws -> [RandMCharacterResultEntity]
    func execute (id: Int) async throws -> RandMCharacterResultEntity
}
