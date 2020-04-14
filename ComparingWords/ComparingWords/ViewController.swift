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
        
        currentWord.text = "hh"
        nextWord.text = "jj"
    }
    
    
    //MARK: Actions
    @IBAction func completeButton(_ sender: UIButton) {
        
nextWord.text = "hh"
        
        let areTheseSame = compareWords(wordOnLabel: currentWord.text!, typedWord: typedWord!.text!)
        print(areTheseSame)
        
        sleep(1)
        
        print("resume")
        
        if areTheseSame {
            replaceWord(thisWord: currentWord, toWord: nextWord)
        }
        
        clearTextField(textField: typedWord)
        


        
        
        
        
//        currentWord.text = typedWord.text
        
        
//        currentWord.text = "hh"
//        typedWord.text = "hh"
        
//        let inputTextField = typedWord.text ?? nil
        
        
        
        
//        print("current word label 에 있는 값: \(currentWord.text)")
//        print("text field 에 있는 값: \(typedWord.text ?? "값이 없어")")
//
//        if currentWord.text == typedWord.text {
//            print("둘의 값이 같다\n\(currentWord.text)\n\(typedWord.text)")
//        }
        
        
//        let words = ["1", "2", "3", "4"]
//
//        var aSet = Set(words)
//
//
//
//        for _ in 1 ... 4 {
//            let element = aSet.randomElement()!
//            print(element)
//            aSet.remove(element)
//        }
        
    }
    
    
    @IBAction func tapOnTheMainView(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard.
        typedWord.resignFirstResponder()
    }
    
    
    func compareWords(wordOnLabel: String, typedWord: String) -> Bool {
        
        if wordOnLabel == typedWord {
            print("\(wordOnLabel) 와 \(typedWord) 이 같다")
            return true
        }
        else {
            return false
        }
        
    }
    
    
    func replaceWord(thisWord: UILabel, toWord: UILabel) {
        thisWord.text = toWord.text
    }
    
    
    func clearTextField(textField: UITextField) {
        textField.text = ""
    }
    
    
}

