// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterCarbon",
    products: [
        .library(name: "TreeSitterCarbon", targets: ["TreeSitterCarbon"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterCarbon",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterCarbonTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterCarbon",
            ],
            path: "bindings/swift/TreeSitterCarbonTests"
        )
    ],
    cLanguageStandard: .c11
)
