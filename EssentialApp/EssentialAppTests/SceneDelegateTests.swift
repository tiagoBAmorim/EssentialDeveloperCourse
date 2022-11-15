//
//  SceneDelegateTests.swift
//  EssentialAppTests
//
//  Created by tamorim on 14/11/2022.
//

import XCTest
import EssentialFeediOS
@testable import EssentialApp

class SceneDelegateTests: XCTestCase {
    
    func test_sceneWillConnectTo_configuresRootViewController() {
        let sut = SceneDelegate()
        sut.window = UIWindow()
        
        sut.configureWindow()
        
        let root = sut.window?.rootViewController
        let rootNavigation = root as? UINavigationController
        let topController = rootNavigation?.topViewController
        
        XCTAssertNotNil(rootNavigation, "Expected a navigation controller as root, got \(String(describing: root)) instead")
        XCTAssertTrue(topController is FeedViewController, "Expected a feed controller as top view controller, got \(String(describing: topController)) instead")
        XCTAssertTrue(sut.window?.rootViewController is UINavigationController)
    }
}
