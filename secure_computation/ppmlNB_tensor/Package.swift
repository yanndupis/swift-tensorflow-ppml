// swift-tools-version:4.2
import PackageDescription

let package = Package(
name: "ppmlNB_tensor",
products: [
.library(name: "ppmlNB_tensor", targets: ["ppmlNB_tensor"]),

],
dependencies: [
.package(url: "https://github.com/mxcl/Path.swift", from: "0.16.1"),
    .package(url: "https://github.com/saeta/Just", from: "0.7.2"),
    .package(url: "https://github.com/latenitesoft/NotebookExport", from: "0.5.0")
],
targets: [
.target(name: "ppmlNB_tensor", dependencies: ["Path", "Just", "NotebookExport"]),

]
)