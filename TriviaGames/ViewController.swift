//
//  ViewController.swift
//  TriviaGame
//
//  Created by manuel on 19/01/2020.
//  Copyright © 2020 manuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var titleLoginName: UILabel!
    

    @IBOutlet weak var userNameField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    

    
    @IBAction func onLoginClick(_ sender: Any) {
        
        
        
        if passwordField.text != "" && userNameField.text != ""{
            let mainStoryBorad = UIStoryboard(name: "Main", bundle: Bundle.main)
            
            guard let mainNavigationVC = mainStoryBorad.instantiateViewController(identifier: "TriviaId") as? TriviaViewController else{
                return
            }
            
            present(mainNavigationVC, animated: true, completion: nil)
        }
        else{

        }
        //let VC = self.storyboard?.instantiateViewController(withIdentifier: "TriviaId") as! TriviaViewController
        //self.navigationController?.pushViewController(VC, animated: true)
        //(((appDelegate.window? as AnyObject))).rootViewController = nav
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }


    
    
    
    
    
    
    
}

