// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GEOSwift",
    platforms: [.iOS(.v12), .macOS(.v10_13), .tvOS(.v12), .watchOS(.v4)],
    products: [
        .library(name: "GEOSwift", targets: ["GEOSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/sp0n-7/geos.git", exact: "9.0.1")
    ],
    targets: [
        .target(
            name: "GEOSwift",
            dependencies: ["geos"]
        ),
        .testTarget(
            name: "GEOSwiftTests",
            dependencies: ["GEOSwift"]
        )
    ]
)
