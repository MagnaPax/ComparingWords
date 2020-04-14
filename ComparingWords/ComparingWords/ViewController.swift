//
//  ViewController.swift
//  ComparingWords
//
//  Created by 한천희 on 2020/04/13.
//  Copyright © 2020 한천희. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var currentWord: UILabel!
    @IBOutlet weak var nextWord: UILabel!
    @IBOutlet weak var typedWord: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: Actions
    @IBAction func completeButton(_ sender: UIButton) {
    }
    
    
    @IBAction func tapOnTheMainView(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard.
        typedWord.resignFirstResponder()
    }
}

