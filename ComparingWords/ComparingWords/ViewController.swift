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
        
        // 테스트를 위한 임시 설정
        currentWord.text = "hh"
        nextWord.text = "jj"
    }
    
    
    //MARK: Actions
    @IBAction func completeButton(_ sender: UIButton) {
        
        // 테스트를 위한 임시 설정
        nextWord.text = "hh"
        
        // 두 아규먼트(현재 label, 입력 text field) 같으면 참
        let areTheseSame = compareWords(wordOnLabel: currentWord, typedWord: typedWord)
        

        // 입력과 현재단어가 같으면 다음 단어를 현재 단어로 옮김
        if areTheseSame {
            replaceWord(thisWord: currentWord, toWord: nextWord)
        }
        
        // text field 지우기
        clearTextField(textField: typedWord)
                
    }
    
    
    @IBAction func tapOnTheMainView(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard.
        typedWord.resignFirstResponder()
    }
    
    
    func compareWords(wordOnLabel: UILabel, typedWord: UITextField) -> Bool {
        
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

