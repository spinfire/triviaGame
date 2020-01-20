//
//  TriviaViewController.swift
//  TriviaGame
//
//  Created by manuel on 19/01/2020.
//  Copyright © 2020 manuel. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var answerTableView: UITableView!
    
    @IBOutlet weak var askLabel: UILabel!
    
    var answerText = "answer"
    
    var listQuestion : [String: Any] = [
        "Answer":"",
        "correct": false
    ]

    
    var listAnswer : [String: Any] = [
        "Question":""]
    
    var appQuestions : [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //askLabel.text = "Question"
        answerIsCorrect()
        // Do any additional setup after loading the view.
    }
    

    func answerIsCorrect(){
        let url = Bundle.main.url(forResource: "TriviaQuestion", withExtension: "json")
        let data = NSData(contentsOf: url!)
        do {
            let object = try JSONSerialization.jsonObject(with: data! as Data, options: .allowFragments)
            if let dictionary = object as? [String: AnyObject] {
                print(dictionary)
                readJSONObject(object: dictionary)
            }
        } catch {
            // Handle Error
        }
    }
    
    func refresh(){        
        self.answerTableView.reloadData()
    }
    
    func readJSONObject(object: [String: AnyObject]) {
        guard let users = object["results"] as? [[String: AnyObject]] else { return }
        
        for user in users {
            guard let question = user["question"] as? String,
                let correctAnswer = user["correct_answer"] as? String else { break }
                
                askLabel.text = question
                
            //if  userNameField.text == name && passwordField.text == pasword{
                //userCorrect = true
            //}
            
                
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

}


extension TriviaViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Select Answer", for: indexPath) as? AnswerTableViewCell{
            let row = indexPath.row
            print(row)
            cell.layer.borderColor = UIColor.black.cgColor
            cell.layer.borderWidth = 0.5
            cell.answerButton.setTitle(answerText, for: .normal)
            return cell
        }
        return UITableViewCell()
    }
    
    
}
