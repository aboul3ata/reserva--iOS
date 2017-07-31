//
//  FancyBtn.swift
//  reserva
//
//  Created by Ali Abouelatta on 7/31/17.
//  Copyright © 2017 Ali Abouelatta. All rights reserved.
//

import UIKit

class FancyBtn: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()

        layer.cornerRadius = 20.0
        layer.borderColor = UIColor.init(red: CGFloat(95), green: CGFloat(75), blue: CGFloat(49), alpha: CGFloat(1)).cgColor

    }
    
}
