//
//  SettingTableViewController.swift
//  Settings
//
//  Created by Tasuku Yamamoto on 4/13/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //as? -> optional typecasting to the specific type in this case it is the settingCell other wise return UITableViewCell(), () means initilizing it
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell()}
        let setting = SettingController.settings[indexPath.row]
        cell.settingCellDelegate = self
        cell.updateViews(with: setting)
        return cell
    }
     
}//End of class

extension SettingTableViewController: SettingCellDelegate{
    func settingSwitchToggled(for cell: SettingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingController.settings[indexPath.row]
        SettingController.toggleIsOn(for: setting)
        cell.updateViews(with: setting)
    }
}
