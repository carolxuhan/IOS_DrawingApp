//
//  Line.swift
//  DrawingApp
//
//  Created by Carol Han on 9/28/16.
//  Copyright © 2016 Carol Han. All rights reserved.
//

import UIKit

struct Line {
    var start: CGPoint
    var end: CGPoint
    //var lastPoint: CGPoint
    //var newPoint: CGPoint
    var lines: [CGPoint] = []
    var width: CGFloat
    var color: UIColor
}