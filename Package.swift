// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JSQDataSourcesKit",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "JSQDataSourcesKit",
            targets: ["JSQDataSourcesKit"])
    ],
    targets: [
        .target(
            name: "JSQDataSourcesKit",
            path: "Source",
            exclude: ["Info.plist"],
            linkerSettings: [
                .linkedFramework("CoreData")
            ]),
        .target(
            name: "ExampleModel",
            path: "Example/ExampleModel/Sources",
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "JSQDataSourcesKitTests",
            dependencies: ["JSQDataSourcesKit", "ExampleModel"],
            path: "Tests",
            exclude: ["Info.plist"])
    ])
