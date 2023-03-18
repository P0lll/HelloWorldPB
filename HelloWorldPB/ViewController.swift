//
//  ViewController.swift
//  HelloWorldPB
//
//  Created by Admin on 14/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let cornerRadius: CGFloat = 50
    let numberOfAlpha = 0.3
    let standartAlpha: CGFloat = 1
    
    @IBOutlet weak var RedLightView: UIView!
    @IBOutlet weak var YellowLightView: UIView!
    @IBOutlet weak var GreenLightView: UIView!
    
    @IBOutlet var ButtonDesigner: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RedLightView.layer.cornerRadius = cornerRadius
        YellowLightView.layer.cornerRadius = cornerRadius
        GreenLightView.layer.cornerRadius = cornerRadius
        
        RedLightView.alpha = numberOfAlpha
        YellowLightView.alpha = numberOfAlpha
        GreenLightView.alpha = numberOfAlpha
        
        ButtonDesigner.layer.cornerRadius = 15
    }
    
    
    @IBAction func StartStopActionButton(_ sender: UIButton) {

        ButtonDesigner.setTitle("NEXT", for: .normal)
        
        if RedLightView.alpha == YellowLightView.alpha {
            RedLightView.alpha = standartAlpha
            GreenLightView.alpha = numberOfAlpha
        }
        else if RedLightView.alpha > numberOfAlpha
                && YellowLightView.alpha == GreenLightView.alpha {
            YellowLightView.alpha = standartAlpha
            RedLightView.alpha = numberOfAlpha
        }
        else if YellowLightView.alpha > numberOfAlpha
                    && GreenLightView.alpha == RedLightView.alpha {
            GreenLightView.alpha = standartAlpha
            YellowLightView.alpha = numberOfAlpha
        }
        
    }
}
