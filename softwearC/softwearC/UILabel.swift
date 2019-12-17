//
//  UILabel.swift
//  softwearC
//
//  Created by 山城怜以 on 2019/12/15.
//  Copyright © 2019 Kodai Suemitsu. All rights reserved.
//

import UIKit

class UILabel: UILabel {
    let label = UILabel()
    label.text = "ラベルのテキスト"
    label.sizeToFit()
    label.center = self.view.center
    self.view.addSubview(label)

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
