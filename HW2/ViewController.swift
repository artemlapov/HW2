//
//  ViewController.swift
//  HW2
//
//  Created by Artem Lapov on 16.09.2022.
//

import UIKit

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

        switchLightButton.layer.cornerRadius = 15
    }

    @IBAction func switchLight() {
    }

}

