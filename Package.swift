// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "CXXTagLib",
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "taglib",
			targets: [
				"taglib",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "taglib",
			cxxSettings: [
				.headerSearchPath("include/taglib"),
				.headerSearchPath("utfcpp/source"),
				.headerSearchPath("."),
				.headerSearchPath("mod"),
				.headerSearchPath("riff"),
				.headerSearchPath("toolkit"),
			]),
		.testTarget(
			name: "CXXTagLibTests",
			dependencies: [
				"taglib",
			]),
	],
	cxxLanguageStandard: .cxx17
)
