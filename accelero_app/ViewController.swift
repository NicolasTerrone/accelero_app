//
//  ViewController.swift
//  accelero_app
//
//  Created by Nicolas Terrone on 28/01/2019.
//  Copyright © 2019 Nicolas Terrone. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabel)
    }
    
    func updateLabel(data: CMAccelerometerData?, error: Error?) {
        guard let accelerometerData = data else { return }
        print (accelerometerData)
    }


}

