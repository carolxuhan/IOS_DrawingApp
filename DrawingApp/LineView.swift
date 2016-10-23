//
//  LineView.swift
//  DrawingApp
//
//  Created by Carol Han on 9/28/16.
//  Copyright © 2016 Carol Han. All rights reserved.
//


import UIKit

class LineView: UIView {
    
    //    var arcCenter = CGPointZero
    //    var arcRadius = CGFloat()
    
    var theLine:Line? {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func drawRect(rect: CGRect) {
        var path = UIBezierPath()
        if theLine?.lines.count==1 {
            path.addArcWithCenter((theLine?.lines[0])!, radius: (theLine?.width)!/2, startAngle: 0, endAngle: CGFloat(M_PI * 2), clockwise: true)
            theLine?.color.setFill()
            path.fill()
        }else{
            path = createQuadPath((self.theLine?.lines)!)
            path.lineWidth = (theLine?.width)!
            path.lineCapStyle = CGLineCap.Round
        }
        theLine?.color.setStroke()
        path.stroke()
    }

    
}