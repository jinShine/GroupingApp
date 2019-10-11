//
//  AppDelegate.swift
//  GroupingApp
//
//  Created by Seungjin on 01/10/2019.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
   

    
    return true
  }
  
}

extension AppDelegate {

  private func setup() {

    //CoreData
    App.coreData.setup(modelName: "GroupingApp")

    //Session
    let googleAPIKey = "AIzaSyDikvJDwE2XbzKNQ-AUOfxDXq9ivvsPg3Y"
    App.userDefaultsManager.setObejct(object: googleAPIKey, key: SessionKey.googleToken, type: .keychain)

  }
}