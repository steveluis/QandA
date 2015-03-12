//
//  ViewController.swift
//  QandA
//
//  Created by Steven Luis on 2/19/15.
//  Copyright (c) 2015 FIU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myUIState: UIState
    
    @IBOutlet var displayQuestion: UILabel!
    
    
    @IBOutlet var displayAnswer: UILabel!
    
    @IBAction func requestQuestion(sender: AnyObject) {
               displayQuestion.text = myUIState.updateQuestion()
    }
    
    @IBAction func requestAnswer(sender: AnyObject) {
        
          displayAnswer.text = myUIState.updateAnswer()
    }
    
    required init(coder aDecoder: NSCoder) {
        myUIState = UIState()
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        displayQuestion.text = myUIState.updateQuestion()
        displayAnswer.text = myUIState.updateAnswer()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

