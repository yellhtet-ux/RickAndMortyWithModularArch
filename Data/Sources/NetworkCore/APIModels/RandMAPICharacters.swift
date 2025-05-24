//
//  RandMAPICharacters.swift
//  Data
//
//  Created by Andrew Hardin on 5/22/25.
//

public struct RandMAPICharacters : Codable, Sendable {
    public let apiInfo: RAndMAPICharacterInfo 
    public let apiResults: [RandMAPICharacterResult] 
    
    enum CodingKeys: String, CodingKey {
        case apiInfo = "info"
        case apiResults = "results"
    }
}

public struct RAndMAPICharacterInfo : Codable, Sendable {
    public let apiCount: Int 
    public let apiPages: Int 
    public let apiNext: String? 
    public let apiPrev : String? 
    
    enum CodingKeys: String, CodingKey {
        case apiCount = "count"  
        case apiPages = "pages"
        case apiNext = "next"
        case apiPrev = "prev"
    }
}

public struct RandMAPICharacterResult: Codable, Identifiable, Sendable {
    public let id: Int 
    public let apiName: String 
    public let apiStatus: String 
    public let apiSpecies: String 
    public let apiType: String  
    public let apiGender: String 
    public let apiOrigin: RandMAPICharacterOrigin 
    public let apiLocation: RandMAPICharacterLocation 
    public let apiImage: String 
    public let apiUrl: String
    public let apiEpisode: [String] 
    public let apiCreated: String 
    
    enum CodingKeys: String, CodingKey {
        case id 
        case apiName = "name"
        case apiStatus = "status"
        case apiSpecies = "species"
        case apiType = "type"
        case apiGender = "gender"
        case apiOrigin = "origin"
        case apiLocation = "location"
        case apiImage = "image"
        case apiUrl = "url"
        case apiEpisode = "episode"
        case apiCreated = "created"
    }
}

public struct RandMAPICharacterOrigin : Codable, Sendable {
    public let name: String 
    public let url: String  
    
    enum CodingKeys: String, CodingKey {
        case name,url
    }
}

public struct RandMAPICharacterLocation : Codable, Sendable {
    public let name: String
    public let url: String 
    
    enum CodingKeys: String, CodingKey {
        case name,url
    }
}
