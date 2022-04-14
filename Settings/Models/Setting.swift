//
//  Setting.swift
//  Settings
//
//  Created by Tasuku Yamamoto on 4/13/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import UIKit

/**
Creates our Setting Object - 'Model'
    - Properties:
        - name: the 'String' identifer for the Setting
        - icon: the 'UIImage' that matches the Setting
        - isOn: the 'Bool' the designate whether the setting is on or not
*/

class Setting {
    //MARK: - Properties
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    //MARK: - Initializer
    init(name: String, icon: UIImage, isOn: Bool){
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}//End of class
