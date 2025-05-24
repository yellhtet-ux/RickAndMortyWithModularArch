//
//  RandMRoute.swift
//  Data
//
//  Created by Andrew Hardin on 5/22/25.
//

import Foundation
import PilotType

public enum RandMRoute {
    case allCharacters
    case character(id: Int)
}


extension RandMRoute : Route {
    public var baseURL: URL {
        .init(string: "https://rickandmortyapi.com/api/")!
    }
    
    public var path: String {
        switch self {
        case .allCharacters:
            return "character"
        case .character(let id):
            return "character/\(id)"
        }
    }
    
    public var httpMethod: HttpMethod {
        switch self {
        case .allCharacters,.character(_):
            .get
        }
    }
    
    public var httpHeaders: HttpHeaders {
        ["Content-Type": "application/json"]
    }
    
    public var parameters: Parameters? {
        switch self {
        case .allCharacters,.character(_):
            return nil
        }
    }
    
    public var parameterEncoding: ParameterEncoding? {
        switch self {
        case .allCharacters,.character(_):
            return nil
        }
    }
}
