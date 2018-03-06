//
//  ViewController.swift
//  Quiz
//
//  Created by Student on 9/2/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var LabelEnd: UILabel!
    
    @IBOutlet weak var Next: UIButton!
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Hide()
        RandomQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func RandomQuestions(){
    
        var RandomNumber = arc4random() % 4
        RandomNumber += 1
        
        switch(RandomNumber){
        case 1:
            
            QuestionLabel.text = "Hello World, what is My Name?"
            Button1.setTitle("John",for: UIControlState.normal)
            Button2.setTitle("Jared",for: UIControlState.normal)
            Button3.setTitle("Google",for: UIControlState.normal)
            Button4.setTitle("Karter",for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 2:
            
            QuestionLabel.text = "What is my Last Name"
            Button1.setTitle("Davidson",for: UIControlState.normal)
            Button2.setTitle("Jared",for: UIControlState.normal)
            Button3.setTitle("Google",for: UIControlState.normal)
            Button4.setTitle("Karter",for: UIControlState.normal)
             CorrectAnswer = "2"
            break
        case 3:
            
            QuestionLabel.text = "What is your favourite pet?"
            Button1.setTitle("Cat",for: UIControlState.normal)
            Button2.setTitle("Dog",for: UIControlState.normal)
            Button3.setTitle("Horse",for: UIControlState.normal)
            Button4.setTitle("Rabbit",for: UIControlState.normal)
            CorrectAnswer = "3"
            break
        case 4:
            
            QuestionLabel.text = "What is your favourite color?"
            Button1.setTitle("White",for: UIControlState.normal)
            Button2.setTitle("Black",for: UIControlState.normal)
            Button3.setTitle("Pink",for: UIControlState.normal)
            Button4.setTitle("Yellow",for: UIControlState.normal)
            CorrectAnswer = "4"
            break
        default :
            break
        }
        
    }
    
    func Hide(){
        
        LabelEnd.isHidden = true
        Next.isHidden = true
    }
    
    func UnHide(){
        LabelEnd.isHidden = false
        Next.isHidden = false
    }
    
    @IBAction func Button1Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "1"){
            LabelEnd.text = "You are correct!"
           RandomQuestions()
        }
        else{
             LabelEnd.text = "You are WONGGGG!"
            Next.isHidden = true;
            
        }
    }
    @IBAction func Button2Action(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You are correct!"
           RandomQuestions()
        }
        else{
            LabelEnd.text = "You are WONGGGG!"
            Next.isHidden = true;
            
        }
    }
    @IBAction func Button3Action(sender: AnyObject) {
          UnHide()
        
        if (CorrectAnswer == "3"){
           LabelEnd.text = "You are correct!"
          RandomQuestions()
        }
        else{
            LabelEnd.text = "You are WRONGGGG!"
            Next.isHidden = true;
        }
    }
    
    
    @IBAction func Button4Action(sender: AnyObject) {
          UnHide()
        
        if (CorrectAnswer == "4"){
            LabelEnd.text = "You are correct!"
            RandomQuestions()
        }
        else{
            LabelEnd.text = "You are WONGGGG!"
            Next.isHidden = true;
        }
    }
    
    @IBAction func Next(sender: AnyObject) {
        RandomQuestions()
        Hide()
    }
    
    
    
    
}

