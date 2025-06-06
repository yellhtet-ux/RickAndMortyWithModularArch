//
//  RandMAPICharacterResult+Dummy.swift
//  Data
//
//  Created by Andrew Hardin on 5/22/25.
//

import Foundation
import NetworkCore
import NetworkExtension


public extension RandMAPICharacterResult {
    static let dummyCharacters : [RandMAPICharacterResult] = 
    """
    {
        "id": 2,
        "name": "Morty Smith",
        "status": "Alive",
        "species": "Human",
        "type": "",
        "gender": "Male",
        "origin": {
          "name": "Earth",
          "url": "https://rickandmortyapi.com/api/location/1"
        },
        "location": {
          "name": "Earth",
          "url": "https://rickandmortyapi.com/api/location/20"
        },
        "image": "https://rickandmortyapi.com/api/character/avatar/2.jpeg",
        "episode": [
          "https://rickandmortyapi.com/api/episode/1",
          "https://rickandmortyapi.com/api/episode/2",
          // ...
        ],
        "url": "https://rickandmortyapi.com/api/character/2",
        "created": "2017-11-04T18:50:21.651Z"
      }
    """
        .utf8Data
        .decoded()
}
