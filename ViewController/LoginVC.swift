//
//  LoginVC.swift
//  Reebok
//
//  Created by Subin Gyawali on 3/13/21.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var loginVC: UIButton!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var btnNotRegistered: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.textUsername.text = "subin@gyawali.com"
        self.textPassword.text = "1234"
    }
    @IBAction func loginClicked(_ sender: Any) {
    
        let username = self.textUsername.text
        let password = self.textPassword.text
        
        let user = User.init(username: username, password: password)
        
        let validation = user.validateUsername()
        
        if(validation.status){
            let mainTabVC = UIStoryboard.init(name: StoryboardName.HOME, bundle: nil).instantiateViewController(withIdentifier: StoryboardID.TAB_BAR_CONTROLLER) as! TabbarController
            self.navigationController?.pushViewController(mainTabVC, animated: true)
        }
        else{
            print("Validation Failed: \(validation.msg)")
        }
    }
    

    @IBAction func notRegisteredClicked(_ sender: Any) {
        let registerVC = UIStoryboard.init(name: StoryboardName.MAIN, bundle: nil).instantiateViewController(withIdentifier: StoryboardID.REG_VC) as! RegisterVC
        
        self.navigationController?.pushViewController(registerVC, animated: true)
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
