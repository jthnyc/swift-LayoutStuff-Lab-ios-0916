//
//  ViewController.swift
//  Frames
//
//  Created by Michael Dippery on 8/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var yellowSquare: UIView?
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var frameXSlider: UISlider!
    @IBOutlet weak var frameYSlider: UISlider!
    @IBOutlet weak var boundsXSlider: UISlider!
    @IBOutlet weak var boundsYSlider: UISlider!
    @IBOutlet weak var frameWidthSlider: UISlider!
    @IBOutlet weak var frameHeightSlider: UISlider!
    @IBOutlet weak var boundWidthSlider: UISlider!
    @IBOutlet weak var boundHeightSlider: UISlider!
    
    
    @IBOutlet weak var frameXLabel: UILabel!
    @IBOutlet weak var frameYLabel: UILabel!
    @IBOutlet weak var boundsXLabel: UILabel!
    @IBOutlet weak var boundsYLabel: UILabel!
    @IBOutlet weak var frameWidthLabel: UILabel!
    @IBOutlet weak var frameHeightLabel: UILabel!
    @IBOutlet weak var boundsWidthLabel: UILabel!
    @IBOutlet weak var boundsHeightLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
        updateSliders()
        updateYellowSquare()
    }

    fileprivate func updateLabels() {
        let frame = imageView.frame
        let bounds = imageView.bounds

        frameXLabel.text = "frame x = \(frame.origin.x)"
        frameYLabel.text = "frame y = \(frame.origin.y)"

        boundsXLabel.text = "bounds x = \(bounds.origin.x)"
        boundsYLabel.text = "bounds y = \(bounds.origin.y)"
        
        frameWidthLabel.text = "frame width = \(frame.size.width)"
        frameHeightLabel.text = "frame height = \(frame.size.height)"
        
        boundsWidthLabel.text = "bounds width = \(bounds.size.width)"
        boundsHeightLabel.text = "bounds height = \(bounds.size.height)"
        
    }

    fileprivate func updateSliders() {
        let frame = imageView.frame
        let superFrame = imageView.superview!.frame
        let bounds = imageView.bounds


        frameXSlider.maximumValue = Float(superFrame.size.width)
        frameYSlider.maximumValue = Float(superFrame.size.height)
        frameXSlider.value = Float(frame.origin.x)
        frameYSlider.value = Float(frame.origin.y)
        
        boundsXSlider.maximumValue = Float(bounds.size.width)
        boundsYSlider.maximumValue = Float(bounds.size.height)
        boundsXSlider.value = Float(bounds.origin.x)
        boundsYSlider.value = Float(bounds.origin.y)
        
        frameWidthSlider.maximumValue = Float(superFrame.size.width)
        frameHeightSlider.maximumValue = Float(superFrame.size.height)
        frameWidthSlider.value = Float(frame.width)
        frameHeightSlider.value = Float(frame.height)
        
        boundWidthSlider.maximumValue = Float(bounds.size.width)
        boundHeightSlider.maximumValue = Float(bounds.size.height)
        boundWidthSlider.value = Float(bounds.width)
        boundHeightSlider.value = Float(bounds.height)
        
    }

    fileprivate func updateYellowSquare() {
        guard yellowSquare == nil else { return }
        let origin = CGPoint(x: 0.0, y: 0.0)
        let size = CGSize(width: 20.0, height: 20.0)
        let rect = CGRect(origin: origin, size: size)
        yellowSquare = UIView(frame: rect)
        yellowSquare!.backgroundColor = UIColor.yellow
        imageView.addSubview(yellowSquare!)
    }

    @IBAction func frameXChanged(_ sender: UISlider) {
        imageView.frame.origin.x = CGFloat(sender.value)
        updateLabels()
    }

    @IBAction func frameYChanged(_ sender: UISlider) {
        imageView.frame.origin.y = CGFloat(sender.value)
        updateLabels()
    }

    @IBAction func boundsXChanged(_ sender: UISlider) {
        imageView.bounds.origin.x = CGFloat(sender.value)
        updateLabels()
    }

    @IBAction func boundsYChanged(_ sender: UISlider) {
        imageView.bounds.origin.y = CGFloat(sender.value)
        updateLabels()
    }
    
    @IBAction func frameWidthChanged(_ sender: UISlider) {
        imageView.frame.size.width = CGFloat(sender.value)
        updateLabels()
    }
    
    @IBAction func frameHeightChanged(_ sender: UISlider) {
        imageView.frame.size.height = CGFloat(sender.value)
        updateLabels()
    }
    
    @IBAction func boundWidthChanged(_ sender: UISlider) {
        imageView.bounds.size.width = CGFloat(sender.value)
        updateLabels()
    }
    
    @IBAction func boundHeightChanged(_ sender: UISlider) {
        imageView.bounds.size.height = CGFloat(sender.value)
        updateLabels()
    }
    
}
