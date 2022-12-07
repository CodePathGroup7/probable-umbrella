//
//  WorkoutsViewController.swift
//  GymApp
//
//  Created by sebastian on 11/21/22.
//

import UIKit
import Parse

class WorkoutsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //array of dictionaries
    let workouts : [[String: String]] =
    [
        ["name": "Push-up",
         "img": "https://www.fitnesseducation.edu.au/wp-content/uploads/2020/10/Pushups.jpg",
         "desc": "1. Get in a plank position, placing your hands slightly wider than your shoulders.\n 2. Straighten your arms and legs.\n 3. Lower your body until your chest nearly touches the floor. \n 4. Pause, then push yourself back up. \n"],
        ["name":"Situp",
         "img": "https://gethealthyu.com/wp-content/uploads/2014/08/Full-Sit-Up_Exercise.jpg",
         "desc": "1. Lie on your back on a mat with knees bent and feet flat on the floor. \n 2. Cross your arms in front of your chest. \n 3. Crunch your ab muscles to lift your shoulders off the mat. \n 4. Hold for a second, then slowly come back down to starting position. \n"],
        ["name":"Squat",
         "img":"https://blog.fitbit.com/wp-content/uploads/2016/10/ArmStanding.jpg",
         "desc":"1. Stand with feet a little wider than hip width, toes facing front.\n2. Drive your hips back, bending at the knees\n3. Sit into a squat position while still keeping your heels and toes on the ground.\n4. Extend your legs to return to the starting position.\n"
        ]
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Successful transition to Workouts View!")

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutCell") as! WorkoutCell
        let workout = workouts[indexPath.row]
        
        cell.workoutLabel.text = workout["name"]
        cell.descriptionLabel.text = workout["desc"]
        
        let url = URL(string: workout["img"]!)
        cell.workoutView.af.setImage(withURL: url!)
        return cell
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
