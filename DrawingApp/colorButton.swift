//
//  colorButton.swift
//  DrawingApp
//
//  Created by Carol Han on 9/28/16.
//  Copyright © 2016 Carol Han. All rights reserved.
//

import UIKit

class colorButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.frame = CGRectMake(30, 30, 30, 30)
        self.setTitle("", forState: UIControlState.Normal)
        self.layer.cornerRadius = 15
    }
    
    
}

