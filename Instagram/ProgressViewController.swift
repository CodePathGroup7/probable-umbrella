//
//  ProgressViewController.swift
//  GymApp
//
//  Created by sebastian on 11/21/22.
//

import UIKit
import AlamofireImage
import Parse

class ProgressViewController: UIViewController {

    @IBOutlet weak var ProgressNumber: UILabel!
    @IBOutlet weak var ProgressBar: UIProgressView!
    var userInfo = [PFObject]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let query = PFUser.query()
        //where key "username" is equal to current user
        query?.whereKey("username", equalTo: PFUser.current()!.username!)
        //print results of query
        query!.findObjectsInBackground { [self] (userInfo, error) in
            if userInfo != nil {
                self.userInfo = userInfo!
                print(self.userInfo)
                //fix no exact matches to subscript error 
                let user = self.userInfo[0]
                let progress = user["completedWorkouts"]!
                print(progress)
                //convert progress to string
                let progressString = String(describing: progress)
                //set progress number label to progress as a percentage
                ProgressNumber.text = progressString
                //set progress bar to progress to percentage based on 10 workouts
                //ProgressBar.progress = (Float(progressString) ?? 0) / 10
                
          }
        }
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

