// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GEOSwiftMapKit",
    platforms: [.iOS(.v12), .macOS(.v10_13), .tvOS(.v12)],
    products: [
        .library(name: "GEOSwiftMapKit", targets: ["GEOSwiftMapKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/gsl-sebastienpecoul/GEOSwift.git", exact: "11.2.0-b2")
    ],
    targets: [
        .target(
            name: "GEOSwiftMapKit",
            dependencies: ["GEOSwift"]
        ),
        .testTarget(
            name: "GEOSwiftMapKitTests",
            dependencies: ["GEOSwiftMapKit"]
        )
    ]
)
