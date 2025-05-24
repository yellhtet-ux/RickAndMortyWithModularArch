// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Domain",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Entities", 
            targets: ["Entities"]
        ),
        .library(
            name: "RepositoryInterfaceProtocol", 
            targets: ["RepositoryInterfaceProtocol"]
        ),
        .library(
            name: "UseCaseInterfaceProtocol", 
            targets: ["UseCaseInterfaceProtocol"]
        ),
        .library(
            name: "UseCases", 
            targets: ["UseCases"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Entities",
            dependencies: []
        ),
        .target(
            name: "RepositoryInterfaceProtocol",
            dependencies: ["Entities"]
        ),
        .target(
            name: "UseCaseInterfaceProtocol",
            dependencies: ["Entities"]
        ),
        .target(
            name: "UseCases",
            dependencies: [
                "UseCaseInterfaceProtocol",
                "RepositoryInterfaceProtocol"
            ]
        ),
        .testTarget(
            name: "DomainTests",
            dependencies: ["Entities", "UseCases", "RepositoryInterfaceProtocol", "UseCaseInterfaceProtocol"]
        ),
    ]
)
