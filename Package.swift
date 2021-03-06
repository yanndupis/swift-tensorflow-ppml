// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "SwiftPPML",
    platforms: [
        .macOS(.v10_13),
    ],
    products: [
        .library(name: "SwiftPPML", targets: ["SwiftPPML"]),
    ],
  dependencies: [
    .package(url: "https://github.com/saeta/Just", from: "0.7.3"),
    .package(url: "https://github.com/mxcl/Path.swift", from: "0.16.3"),
  ],
  targets: [
    .target( name: "SwiftPPML", dependencies: ["Just", "Path"]),
    .target( name: "run", dependencies: ["SwiftPPML"]),
  ]
)
