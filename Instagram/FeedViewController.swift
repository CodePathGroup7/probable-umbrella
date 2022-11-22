//
//  FeedViewController.swi
//
//  Created by team #7
//

import UIKit
import Parse
import AlamofireImage
import MessageInputBar

class FeedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func FeedToWorkoutsButton(_ sender: Any) {
        self.performSegue(withIdentifier: "FeedToWorkouts", sender: self)
    }
    @IBAction func FeedToAccountButton(_ sender: Any) {
        self.performSegue(withIdentifier: "FeedToAccountDetails", sender: self)
    }
    @IBAction func FeedToProgress(_ sender: Any) {
        self.performSegue(withIdentifier: "FeedToProgress", sender: self)
    }
    @IBAction func FeedToShareButton(_ sender: Any) {
        self.performSegue(withIdentifier: "FeedToShare", sender: self)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    

    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else {return}
        delegate.window?.rootViewController = loginViewController
    }
    

}
