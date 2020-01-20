//
//  AnswerTableViewCell.swift
//  TriviaGame
//
//  Created by manuel on 19/01/2020.
//  Copyright © 2020 manuel. All rights reserved.
//

import UIKit

class AnswerTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var answerButton: UIButton!
    
    
    @IBAction func answerButtonClick(_ sender: Any) {
        
        print("Action")
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
