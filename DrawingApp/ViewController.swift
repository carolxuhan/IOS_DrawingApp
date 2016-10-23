//
//  ViewController.swift
//  DrawingApp
//
//  Created by Carol Han on 9/27/16.
//  Copyright © 2016 Carol Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var drawView: DrawView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearView(){
        //Clear button fuction
        let theDrawView: DrawView = drawView as DrawView
        for v in theDrawView.subviews {
            v.removeFromSuperview()
        }
        theDrawView.lineList = theDrawView.resetList(theDrawView.lineList)
        theDrawView.backgroundColor = UIColor.clearColor()
    }

    @IBAction func changeWidth(sender: UISlider) {
        //slider function of changing line width
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.lineWidth = CGFloat(sender.value)
    }
    
    @IBAction func Undo(sender: UIButton) {
        //Undo button function
        let theDrawView: DrawView = drawView as DrawView
        if theDrawView.lineList.current == nil {
        }else if theDrawView.lineList.current?.prev == nil {
            theDrawView.lineList.current?.subv.alpha = 0
        }else{
            theDrawView.lineList.current?.subv.alpha = 0
            theDrawView.lineList.current = theDrawView.lineList.current?.prev
        }
    }
    
    @IBAction func Redo(sender: UIButton) {
        //Redo button function
        let theDrawView: DrawView = drawView as DrawView
        if theDrawView.lineList.current == nil {
        }else if theDrawView.lineList.current?.next == nil {
            theDrawView.lineList.current?.subv.alpha = 1
        }else{
            theDrawView.lineList.current?.subv.alpha = 1
            theDrawView.lineList.current = theDrawView.lineList.current?.next
        }
    }
    
    //events on red button, tap once to pick color, tap twice to set background color
    @IBAction func colorRed(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.lineColor = UIColor.redColor()
    }
    @IBAction func backgroundRed(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.backgroundColor = UIColor.redColor()
    }
    
    //events on orange button, tap once to pick color, tap twice to set background color
    @IBAction func colorOrange(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.lineColor = UIColor.orangeColor()
    }
    @IBAction func backgroundOrange(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.backgroundColor = UIColor.orangeColor()
    }
    
    //events on yellow button, tap once to pick color, tap twice to set background color
    @IBAction func colorYellow(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.lineColor = UIColor.yellowColor()
    }
    @IBAction func backgroundYellow(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.backgroundColor = UIColor.yellowColor()
    }
    
    //events on green button, tap once to pick color, tap twice to set background color
    @IBAction func colorGreen(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.lineColor = UIColor.greenColor()
    }
    @IBAction func backgroundGreen(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.backgroundColor = UIColor.greenColor()
    }
    
    //events on blue button, tap once to pick color, tap twice to set background color
    @IBAction func colorBlue(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.lineColor = UIColor.blueColor()
    }
    @IBAction func backgroundBlue(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.backgroundColor = UIColor.blueColor()
    }
    
    //events on blue button, tap once to pick color, tap twice to set background color
    @IBAction func colorPurple(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.lineColor = UIColor.purpleColor()
    }
    @IBAction func backgroundPurple(sender: colorButton) {
        let theDrawView: DrawView = drawView as DrawView
        theDrawView.backgroundColor = UIColor.purpleColor()
    }

}

