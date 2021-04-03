//
//  DrawVC.swift
//  Reebok
//
//  Created by Subin Gyawali on 3/13/21.
//

import UIKit

class DrawVC: UIViewController {

    @IBOutlet weak var btnDrawBack: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var minValue: UILabel!
    @IBOutlet weak var currValue: UILabel!
    @IBOutlet weak var maxValue: UILabel!
    @IBOutlet weak var drawArea: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.slider.minimumValue = 0
        self.slider.maximumValue = 100
        self.slider.value = 25
        self.minValue.text = "\(self.slider.minimumValue)"
        self.maxValue.text = "\(self.slider.maximumValue)"
        self.currValue.text = "\(self.slider.value)"
    }
    
    @IBAction func cllickedBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        print("Slider Changed")
        self.currValue.text = "\(self.slider.value)"
    }
    
    
    @IBAction func changeColor(_ sender: Any) {
        self.drawArea.backgroundColor = #colorLiteral(red: 0, green: 0.3418624401, blue: 1, alpha: 1)
    }
    
}
