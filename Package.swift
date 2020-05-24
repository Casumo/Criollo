// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Criollo",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "Criollo",
            targets: ["Criollo"]),
    ],
    dependencies: [
        .package(name:"CocoaAsyncSocket", url: "https://github.com/robbiehanson/CocoaAsyncSocket", from: "7.6.4"),
    ],
    targets: [
        .target(
            name: "Criollo",            
            path: "Criollo/",
            publicHeadersPath: ""),

        .testTarget(name: "CriolloTests",
                    dependencies: ["Criollo"],
                    path: "CriolloTests"),
    ]
)