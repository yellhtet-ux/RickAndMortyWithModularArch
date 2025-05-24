// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Data",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "NetworkCore",targets: ["NetworkCore"]),
        .library(name: "NetworkExtension", targets: ["NetworkExtension"]),
        .library(name: "Repositories", targets: ["Repositories"]),
        .library(name: "DataTestHelper",targets: ["DataTestHelper"])
    ],
    dependencies: [
        .package(name: "Domain", path: "../Domain"),
        .package(url: "https://github.com/Thieurom/Pilot", from: "0.5.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "NetworkCore",dependencies: []),
        .target(name: "NetworkExtension",dependencies: ["NetworkCore", .product(name: "Pilot", package: "Pilot"),.product(name: "PilotType", package: "Pilot")]),
        .target(name: "Repositories",dependencies: ["NetworkCore",.product(name: "Entities", package: "Domain"),.product(name: "RepositoryInterfaceProtocol", package: "Domain")]),
        .target(name: "DataTestHelper",dependencies: ["NetworkCore","NetworkExtension",.product(name: "Entities", package: "Domain")]),
        
        
        
        .testTarget(name: "RepositoriesTests",dependencies: ["NetworkCore","Repositories","DataTestHelper"])
    ]
)
