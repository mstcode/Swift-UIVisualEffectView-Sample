//
//  ViewController.swift
//  BlurEffect
//
//  Created by mstcode on 28/12/15.
//  Copyright © 2015 mstcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blurEffectImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .Light)) as UIVisualEffectView
        visualEffectView.frame = blurEffectImage.bounds
        
        blurEffectImage.addSubview(visualEffectView)
        blurEffectImage.alpha = 0
        blurEffectImage.userInteractionEnabled = true
    }

    @IBAction func blurEffectBtn(sender: AnyObject) {
        if blurEffectImage.alpha == 1 {
            blurEffectImage.alpha = 0
        } else {
            blurEffectImage.alpha = 1
        }
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

