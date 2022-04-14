//
//  SettingController.swift
//  Settings
//
//  Created by Tasuku Yamamoto on 4/13/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import UIKit

class SettingController{
    
    //MARK: - Properties
    static let settings: [Setting] = {
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        return [music, appStore, iBooks]
    }()
    
    //MARK: - Methods
    static func toggleIsOn(for setting: Setting){
        setting.isOn = !setting.isOn
    }
    
}//End of class
