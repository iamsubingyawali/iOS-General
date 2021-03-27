//
//  GyroscopeVC.swift
//  Reebok
//
//  Created by Subin Gyawali on 3/13/21.
//

import UIKit
import CoreMotion

class GyroscopeVC: UIViewController {

    @IBOutlet weak var btnBackInfo: UIButton!
    let motionManager = CMMotionManager()
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motionManager.startAccelerometerUpdates()
        motionManager.startGyroUpdates()
        motionManager.startMagnetometerUpdates()
        motionManager.startDeviceMotionUpdates()
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(GyroscopeVC.update), userInfo: nil, repeats: true)
    }

    @objc func update() {
        print("Inside Update Fuction")
        if let accelerometerData = motionManager.accelerometerData {
            print(accelerometerData)
        }
        if let gyroData = motionManager.gyroData {
            print(gyroData)
        }
        if let magnetometerData = motionManager.magnetometerData {
            print(magnetometerData)
        }
        if let deviceMotion = motionManager.deviceMotion {
            print(deviceMotion)
        }
    }
}
