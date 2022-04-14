//
//  SettingController.swift
//  Settings
//
//  Created by Tasuku Yamamoto on 4/13/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import UIKit
///Our Models Controller Class
class SettingController{
    
    //MARK: - Source of Truth
    /**
    Source of Truth
    
     We created a computed property named 'settings' and declared the type to be an array of 'Setting' objects
     - returns: the mock Setting Objects we created in an array
    */
    static let settings: [Setting] = {
        // Mark as static so we can access this array on a seperate file.
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        return [music, appStore, iBooks]
    }()
    
    //MARK: - Methods
    /**
    Toggles the 'isOn' property on a 'Setting' object to the opposite state
     - Parameters:
        - setting: the Setting object we wish to change the 'isOn' of
    */
    static func toggleIsOn(for setting: Setting){
        setting.isOn = !setting.isOn
    }
    
}//End of class
