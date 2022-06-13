// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "NeedleFoundation",
    products: [
        .library(name: "NeedleFoundation", type: .dynamic, targets: ["NeedleFoundation"]),
        .library(name: "NeedleFoundationTest", type: .dynamic, targets: ["NeedleFoundationTest"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NeedleFoundation",
            dependencies: []),
        .testTarget(
            name: "NeedleFoundationTests",
            dependencies: ["NeedleFoundation"],
            exclude: []),
        .target(
            name: "NeedleFoundationTest",
            dependencies: ["NeedleFoundation"]),
        .testTarget(
            name: "NeedleFoundationTestTests",
            dependencies: ["NeedleFoundationTest"],
            exclude: []),
    ],
    swiftLanguageVersions: [.v5]
)
