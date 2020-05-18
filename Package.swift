// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftDateAliases",
    products: [
        .library(
            name: "SwiftDateAliases",
            targets: ["SwiftDateAliases"]),
    ],
    dependencies: [
        .package(url: "https://github.com/malcommac/SwiftDate.git", from: "6.1.0"),
    ],
    targets: [
        .target(
            name: "SwiftDateAliases",
            dependencies: [
                .product(name: "SwiftDate", package: "SwiftDate"),
            ]
        ),
        .testTarget(
            name: "SwiftDateAliasesTests",
            dependencies: ["SwiftDateAliases"]),
    ]
)
