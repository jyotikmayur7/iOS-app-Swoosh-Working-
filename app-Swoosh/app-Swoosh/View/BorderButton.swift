//
//  BorderButton.swift
//  app-Swoosh
//
//  Created by Jyotik Mayur on 06/02/18.
//  Copyright © 2018 Jyotik Mayur. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
