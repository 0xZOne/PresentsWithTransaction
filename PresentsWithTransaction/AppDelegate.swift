//
//  AppDelegate.swift
//  PresentsWithTransaction
//
//  Created by zero on 2022/12/29.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        guard
            let device = MTLCreateSystemDefaultDevice(),
            let commandQueue = device.makeCommandQueue(),
            let library = device.makeDefaultLibrary()
            else { preconditionFailure("Unable to setup Metal device") }
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = MetalKitViewController(device: device, commandQueue: commandQueue, library: library)
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}

