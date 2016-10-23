//
//  Smooth.swift
//  DrawingApp
//
//  Created by Carol Han on 9/28/16.
//  Copyright © 2016 Carol Han. All rights reserved.
//

import UIKit

private func findMidpoint(firstPoint: CGPoint, secondPoint: CGPoint) -> CGPoint {
    // implement this function here
    var result:CGPoint = CGPointZero
    result.x = (firstPoint.x+secondPoint.x)/2
    result.y = (firstPoint.y+secondPoint.y)/2
    return result
}

func createQuadPath(arrayOfPoints: [CGPoint]) -> UIBezierPath {
    let newPath = UIBezierPath()
    let firstLocation = arrayOfPoints[0]
    newPath.moveToPoint(firstLocation)
    let secondLocation = arrayOfPoints[1]
    let firstMidpoint = findMidpoint(firstLocation, secondPoint: secondLocation)
    newPath.addLineToPoint(firstMidpoint)
    for index in 1 ..< arrayOfPoints.count-1 {
        let currentLocation = arrayOfPoints[index]
        let nextLocation = arrayOfPoints[index + 1]
        let midpoint = findMidpoint(currentLocation, secondPoint: nextLocation)
        newPath.addQuadCurveToPoint(midpoint, controlPoint: currentLocation)
    }
    let lastLocation = arrayOfPoints.last
    newPath.addLineToPoint(lastLocation!)
    return newPath
}