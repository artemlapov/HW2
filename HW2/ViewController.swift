//
//  ViewController.swift
//  HW2
//
//  Created by Artem Lapov on 16.09.2022.
//

import UIKit

var numberOfClicks = 0

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var switchLightButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 65
        yellowLightView.layer.cornerRadius = 65
        greenLightView.layer.cornerRadius = 65

        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3

        switchLightButton.layer.cornerRadius = 15

    }

    @IBAction func switchLight() {
        if numberOfClicks == 0 {
            redLightView.alpha = 1
            numberOfClicks += 1
        } else {
            switchLightButton.setTitle("NEXT", for: .normal)
            switch numberOfClicks % 3 {
            case 0:
                redLightView.alpha = 1
                greenLightView.alpha = 0.3
                numberOfClicks += 1
            case 1:
                redLightView.alpha = 0.3
                yellowLightView.alpha = 1
                numberOfClicks += 1
            case 2:
                yellowLightView.alpha = 0.3
                greenLightView.alpha = 1
                numberOfClicks += 1
            default:
                break
            }
        }
    }
}



