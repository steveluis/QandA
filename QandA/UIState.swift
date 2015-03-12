//
//  UIState.swift
//  QandA
//
//  Created by Steven Luis on 2/24/15.
//  Copyright (c) 2015 FIU. All rights reserved.
//

import Foundation


class UIState: NSObject {

    // Create two arrays to hold question answer pairs
    // updateQuestion is used to select the next question
    // updateAnswer is used to select the next answer
    // indexQA assumes when an answer is given the counter will be incremented.

    let questions = ["3 + 3", "4 + 4", "5 + 5"]
    let answers = ["6", "8", "10"]
    var indexQA = 0
    
    func updateQuestion () -> NSString {
    
        return questions[indexQA]
    }
    
    func updateAnswer () -> NSString {
        
        return answers[indexQA++]
        
    }
}
