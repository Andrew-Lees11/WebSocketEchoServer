// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EchoServer",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "EchoServer",
            targets: ["EchoServer"]),
    ],
    dependencies: [
         .package(url: "https://github.com/IBM-Swift/Kitura.git", .upToNextMinor(from: "2.2.0")),
         .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", .upToNextMinor(from: "1.7.0")),
         .package(url: "https://github.com/IBM-Swift/Kitura-WebSocket.git", .upToNextMinor(from: "1.0.1"))
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "EchoServer",
            dependencies: ["Kitura", "HeliumLogger", "Kitura-WebSocket"]),
        .testTarget(
            name: "EchoServerTests",
            dependencies: ["EchoServer"]),
    ]
)
