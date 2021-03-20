// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CSII-ISP",
  products: [
//    .library(
//      name: "SwiftSoup",
//      targets: ["SwiftSoup"]),
//    .library(
 //     name: "uikit",
//      targets: ["uikit"]),
  ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
     .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "1.7.4"),
  //    .package(url: "https://github.com/uikit/uikit.git", from:"1.2.2"),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
      
        .target(
            name: "CSII-ISP",
            dependencies: ["SwiftSoup",]),
//        path: "CSII-ISP"),

       
      //  .target(
     //     name: "uikit",
    //      dependencies: ["uikit"],
  //        path: "CSII-ISP/uikit"),
        .testTarget(
            name: "CSII-ISPTests",
            dependencies: ["CSII-ISP"]),
    ]
)
/*
let packageB = Package(
    name: "CSII-ISP",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
      .package(url: "https://github.com/uikit/uikit.git", from: "3.6.18"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CSII-ISP",
            dependencies: ["UIKit"]),
        .testTarget(
            name: "CSII-ISPTests",
            dependencies: ["CSII-ISP"]),
    ]
)
*/
