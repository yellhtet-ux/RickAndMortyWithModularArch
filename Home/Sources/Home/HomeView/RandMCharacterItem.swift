//
//  RandMCharacterItem.swift
//  Home
//
//  Created by Andrew Hardin on 5/22/25.
//

import Foundation
import Entities

public struct RandMCharacterItem: Equatable,Identifiable {
    public let id: Int 
    public let name: String 
    public let status: String 
    public let species: String 
    public let type: String  
    public let gender: String 
    public let image: String 
    public let episode: [String] 
    public let created: String
    
    public init(character: RandMCharacterResultEntity) {
        self.id = character.id
        self.name = character.name
        self.status = character.status
        self.species = character.species
        self.type = character.type
        self.gender = character.gender
        self.image = character.image
        self.episode = character.episode
        self.created = character.created
    }
}
