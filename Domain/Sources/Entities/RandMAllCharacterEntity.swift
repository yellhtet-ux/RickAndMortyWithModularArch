//
//  RandMAllCharacterEntity.swift
//  Domain
//
//  Created by Andrew Hardin on 5/20/25.
//

public protocol RandMCharacterEntity: Sendable {
    var info: RandMCharacterInfo {get}
    var results: [RandMCharacterResultEntity] {get}
}

public protocol RandMCharacterInfo: Sendable  {
    var count: Int {get}
    var pages: Int {get}
    var next: String? {get}
    var prev : String? {get}
}

public protocol RandMCharacterResultEntity : Sendable {
    var id: Int {get}
    var name: String {get}
    var status: String {get}
    var species: String {get}
    var type: String {get}
    var gender: String {get}
    var origin: RandMCharacterOrigin {get}
    var location: RandMCharacterLocation {get}
    var image: String {get}
    var episode: [String] {get}
    var url : String {get}
    var created: String {get}
}

public protocol RandMCharacterOrigin: Sendable  {
    var name: String {get}
    var url: String {get}
}

public protocol RandMCharacterLocation: Sendable  {
    var name: String {get}
    var url: String {get}
}
