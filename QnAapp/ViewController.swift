//
//  ViewController.swift
//  QnAapp
//
//  Created by leta on 2020/9/1.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var againButton: UIButton!
    var questions = [Question]()
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = String(index + 1)
        
        let question1 = Question()
        question1.description = "佩佩的弟弟叫喬治，那她爸爸叫什麼？"
        question1.answer = "豬爸爸"
        questions.append(question1)
        
        let question2 = Question()
        question2.description = "佩佩最喜歡的活動是？"
        question2.answer = "在水坑跳上跳下"
        questions.append(question2)
        
        let question3 = Question()
        question3.description = "兔子雷貝卡的媽媽的姊妹的名字是？"
        question3.answer = "兔子小姐"
        questions.append(question3)
        
        let question4 = Question()
        question4.description = "佩佩的寵物叫什麼名字？"
        question4.answer = "魚兒小金"
        questions.append(question4)
        
        let question5 = Question()
        question5.description = "喬治最愛的玩偶叫什麼名字？"
        question5.answer = "恐龍先生"
        questions.append(question5)
        
        let question6 = Question()
        question6.description = "豬爺爺豬奶奶是佩佩的內祖父母還是外祖父母？"
        question6.answer = "外祖父母（外公、外婆）"
        questions.append(question6)
        
        let question7 = Question()
        question7.description = "倉鼠醫生的寵物叫什麼名字？"
        question7.answer = "烏龜小堤"
        questions.append(question7)
        
        let question8 = Question()
        question8.description = "佩佩的老師是什麼名字？"
        question8.answer = "羚羊老師"
        questions.append(question8)
        
        let question9 = Question()
        question9.description = "皮卓是什麼動物？"
        question9.answer = "馬"
        questions.append(question9)
        
        let question10 = Question()
        question10.description = "負責送信的郵差是誰？"
        question10.answer = "斑馬先生"
        questions.append(question10)
        
        let question11 = Question()
        question11.description = "誰有雙胞胎妹妹？"
        question11.answer = "斑馬柔依"
        questions.append(question11)
        
        let question12 = Question()
        question12.description = "是誰非常博學多聞？"
        question12.answer = "大象愛德蒙"
        questions.append(question12)
        
        let question13 = Question()
        question13.description = "佩佩的筆友是誰？"
        question13.answer = "驢子黛爾芬"
        questions.append(question13)
        
        let question14 = Question()
        question14.description = "佩佩的堂弟叫什麼名字？"
        question14.answer = "寶寶亞歷山大"
        questions.append(question14)
        
        let question15 = Question()
        question15.description = "佩佩和喬治最喜歡的電腦遊戲是？"
        question15.answer = "快樂母雞"
        questions.append(question15)
        
        questions.shuffle()
        
        questionLabel.text = questions[index].description
    }

    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = questions[index].answer
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        
        if index < 9 {
            index = index + 1
            numberLabel.text = String(index + 1)
            answerLabel.text = " ? "
            questionLabel.text = questions[index].description
            if index == 9 {
                nextButton.isHidden = true
                againButton.isHidden = false
            }
        }
        
    }
    @IBAction func tryAgain(_ sender: Any) {
        questions.shuffle()
        index = 0
        numberLabel.text = String(index + 1)
        questionLabel.text = questions[index].description
        answerLabel.text = " ? "
        nextButton.isHidden = false
        againButton.isHidden = true
    }
}

