//
//  AccountViewController.swift
//  GymApp
//
//  Created by sebastian on 11/21/22.
//

import UIKit
import AlamofireImage
import Parse

class AccountViewController: UIViewController {
    @IBOutlet weak var UserNameLabel: UILabel!
    @IBOutlet weak var PhoneNumberLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var ProfilePicture: UIImageView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let currentUser = PFUser.current()
        if currentUser != nil {
            UserNameLabel.text = currentUser?.username
            PhoneNumberLabel.text = currentUser?.object(forKey: "phoneNumber") as? String
            EmailLabel.text = currentUser?.object(forKey: "email") as? String
        let pantherImage = "https://en.wikipedia.org/wiki/FIU_Panthers#/media/File:FIU_Panthers_logo.svg"
        let url = URL(string: pantherImage)
        
        ProfilePicture.af.setImage(withURL: url!)
        
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
}
