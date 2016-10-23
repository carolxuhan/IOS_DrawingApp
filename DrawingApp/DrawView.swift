//
//  DrawView.swift
//  DrawingApp
//
//  Created by Carol Han on 9/28/16.
//  Copyright © 2016 Carol Han. All rights reserved.
//

import UIKit

class DrawView: UIView {

    var lineWidth:CGFloat = 5
    var lineColor:UIColor = UIColor.blackColor()
    class ListNode {
        var subv: LineView
        var next: ListNode?
        var prev: ListNode?
        
        init(_ subv: LineView) {
            self.subv = subv
            self.prev = nil
            self.next = nil
        }
    }
    class List {
        var head: ListNode?
        var tail: ListNode?
        var current: ListNode?
        
        func appendToCurrent(subv: LineView) {
            if current == nil {
                tail = ListNode(subv)
                head = tail
                current = tail
            } else {
                let temp = ListNode(subv)
                current!.next = temp
                temp.prev = current
                
                current = current!.next
                tail = current
            }
        }

    }
    func resetList(linelist: List)->List {
        return List()
    }
    var lineList = List()
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        //initialization here
        self.backgroundColor = UIColor.whiteColor()
    }

    var currLine: LineView? = nil
    var lastPoint = CGPointZero
    var newPoint = CGPointZero
 
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touchPoint = (touches.first)!.locationInView(self) as CGPoint
        //print ("the location is \(touchPoint)")
        lastPoint = touchPoint
        
        let myRect = CGRect(x:0, y: 0, width:self.frame.width, height: self.frame.height)
        currLine = LineView(frame: myRect)
        currLine?.theLine = Line(start: touchPoint, end: touchPoint, lines: [touchPoint],width: lineWidth,color: lineColor)
        currLine!.backgroundColor = UIColor.clearColor()
        self.addSubview(currLine!)
        lineList.appendToCurrent(currLine!)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touchPoint = (touches.first)!.locationInView(self) as CGPoint
        //print("In touchesMoved at \(touchPoint)")
        newPoint = touchPoint
        currLine?.theLine?.lines.append(newPoint)
        currLine?.theLine?.end = newPoint
        lastPoint = newPoint
        
    }
    
//    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        let touchPoint = (touches.first)!.locationInView(self) as CGPoint
//        print("In touchesEnded at \(touchPoint)")
//        //        newPoint = touchPoint
//        //
//        //        currLine?.theLine?.lines.append(newPoint)
//        //        currLine?.theLine?.end = newPoint
//        //        lastPoint = newPoint
//        
//    }
    
    
    
    
}
