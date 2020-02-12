//
//  SettingsSwitchTableViewCell.swift
//  SendBird-iOS
//
//  Created by Jed Gyeong on 10/17/18.
//  Copyright © 2018 SendBird. All rights reserved.
//

import UIKit

class SettingsSwitchTableViewCell: UITableViewCell {
    weak var delegate: SettingsTableViewCellDelegate?
    
    var switchIdentifier: String?
    
    @IBOutlet weak var bottomBorderView: UIView!
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func clickSwitch(_ sender: Any) {
        guard let switchButton = sender as? UISwitch, let identifier = self.switchIdentifier else { return }
        self.delegate?.didChangeSwitchButton(isOn: switchButton.isOn, identifier: identifier)
    }
}
