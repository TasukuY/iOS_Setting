//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Tasuku Yamamoto on 4/13/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingCellDelegate: class {
    //Step one: Declare Protocol
    func settingSwitchToggled(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
    @IBOutlet weak var settingNameLabel: UILabel!
    
    //MARK: - Properties
    //step two: create the delegate
    weak var settingCellDelegate: SettingCellDelegate?
    
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
        settingCellDelegate?.settingSwitchToggled(for: self)
    }
    
}
