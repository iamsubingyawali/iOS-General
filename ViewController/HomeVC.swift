//
//  HomeVC.swift
//  Reebok
//
//  Created by Subin Gyawali on 3/13/21.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var btnLogout: UIView!
    @IBOutlet weak var btnHomeBack: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        let menuVC = UIStoryboard.init(name: StoryboardName.HOME, bundle: nil).instantiateViewController(withIdentifier: StoryboardID.MENU_VC) as! MenuVC
        self.present(menuVC, animated: true)
    }
    
    @IBAction func clickedBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
