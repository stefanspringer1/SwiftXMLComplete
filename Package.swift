// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftXMLComplete",
    platforms: [
        .macOS(.v15),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftXMLComplete",
            targets: ["SwiftXMLComplete"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/stefanspringer1/Pipeline.git", from: "10.0.37"),
        .package(url: "https://github.com/stefanspringer1/PipelineBasicLogging.git", from: "0.0.1"),
        .package(url: "https://github.com/stefanspringer1/SwiftXML.git", from: "12.0.6"),
        .package(url: "https://github.com/stefanspringer1/PipelineExtensionsForSwiftXML.git", from: "0.0.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftXMLComplete",
            dependencies: [
                "Pipeline",
                "PipelineLogging",
                "SwiftXML",
                "PipelineExtensionsForSwiftXML",
            ]
        ),
        .testTarget(
            name: "SwiftXMLCompleteTests",
            dependencies: ["SwiftXMLComplete"]
        ),
    ]
)
