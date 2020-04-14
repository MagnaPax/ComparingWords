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
    private var wordList = ["1", "2", "3", "4"]
//    private var haha: [Int] = []
//    private var hoho: Int = 0
//    private var aaaaaa: (_: String, _: String) = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 배열을 넘긴 뒤 랜덤한 두 개의 단어 받음
        let randomWords = returnRandomWords(fromList: wordList)
        
        print("랜덤Current Word: \(randomWords.currentWord)\n랜덤Next Word: \(randomWords.nextWord)\n")
        
        // 넘겨받은 두 임의의 단어를 currentWord 레이블과 nextWord 레이블에 할당
        currentWord.text! = randomWords.currentWord
        nextWord.text! = randomWords.nextWord
        
        print("현재단어label: \(currentWord.text!)\n다음단어label: \(nextWord.text!)")
        
    }
    
    
    //MARK: Actions
    @IBAction func completeButton(_ sender: UIButton) {
        
        // 두 아규먼트(현재 label, 입력 text field) 같으면 참
        let areTheseSame = compareWords(wordOnLabel: currentWord, typedTextField: typedWord)
        
        // 입력과 현재단어가 같으면 다음 단어를 현재 단어로 옮김
        if areTheseSame {
            replaceWord(thisWord: currentWord, toWord: nextWord)
            
            // 현재 단어를 다음 단어로 바꾼 뒤 새로운 다음 단어를 받음
            let randomWords = returnRandomWords(fromList: wordList)
            nextWord.text! = randomWords.nextWord
        }
        
        
        // text field 지우기
        clearTextField(textField: typedWord)
                
    }
    
    
    @IBAction func tapOnTheMainView(_ sender: UITapGestureRecognizer) {
        
        // Hide the keyboard.
        typedWord.resignFirstResponder()
    }
    
    
    func compareWords(wordOnLabel: UILabel, typedTextField: UITextField) -> Bool {
        
        print("compareWords 함수에 들어왔음\n현재단어: \(currentWord.text!)\n입력단어: \(typedTextField.text!)")
        
        if wordOnLabel.text! == typedTextField.text! {
            print("\(wordOnLabel.text!) 와 \(typedTextField.text!) 이 같다")
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
        textField.text = nil
    }
    
    
    func returnRandomWords(fromList: [String]) -> (currentWord: String, nextWord: String) {
                
        var aSet = Set(fromList)

        let currentWord = aSet.randomElement()
        aSet.remove(currentWord!)
        
        let nextWord = aSet.randomElement()
        
        return (currentWord!, nextWord!)
        
    }
}

