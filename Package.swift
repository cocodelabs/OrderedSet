// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "OrderedSet",
  products: [
    .library(
        name: "OrderedSet",
        targets: ["TSCBasic"]),
  ],
  targets: [
    .target(name: "TSCBasic", path: "Sources/OrderedSet"),
    .testTarget(
      name: "OrderedSetTests",
      dependencies: ["TSCBasic"]
    ),
  ]
)
