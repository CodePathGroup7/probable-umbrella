//
//  WorkoutCell.swift
//  GymApp
//
//  Created by Alejandro on 12/6/22.
//

import UIKit

class WorkoutCell: UITableViewCell {

    
    @IBOutlet weak var workoutView: UIImageView!
    @IBOutlet weak var workoutLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var finishButton: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
