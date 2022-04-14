//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Tasuku Yamamoto on 4/13/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
    @IBOutlet weak var settingNameLabel: UILabel!
    
    //MARK: - Methods
    func updateViews(with setting: Setting){
        settingNameLabel.text = setting.name
        settingImageView.image = setting.icon
        settingSwitch.isOn = setting.isOn
        //Ternary Operator
        backgroundColor = setting.isOn ? .cyan : .white
    }
    
    //MARK: - IBActions
    @IBAction func settingSwitchToggled(_ sender: Any) {
    }
    
}
