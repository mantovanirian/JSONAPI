// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JSONAPI",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "JSONAPI",
            targets: ["JSONAPI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mattpolzin/Result", .revision("534d672316477abe29ec4b5ebf65827055b86973"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "JSONAPI",
            dependencies: ["Result"]),
        .testTarget(
            name: "JSONAPITests",
            dependencies: ["JSONAPI"]),
    ],
  	swiftLanguageVersions: [.v4_2]
)
