// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "xsys",
  products: [ .library(name: "xsys", targets: [ "xsys" ]) ],
  targets: [
    .target(name: "xsys", dependencies: []),
    .testTarget(name: "xsysTests", dependencies: [ "xsys" ])
  ]
)
