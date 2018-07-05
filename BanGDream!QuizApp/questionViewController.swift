//
//  questionViewController.swift
//  BanGDream!QuizApp
//
//  Created by アポカリプス・ティア on 2018/06/08.
//  Copyright © 2018年 アポカリプス・ティア. All rights reserved.
//

import UIKit

class questionViewController: UIViewController {

    @IBOutlet weak var bandNameLabel: UILabel!
    
    @IBOutlet weak var quizText: UITextView!
    
    //ボタン
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    
    
    var qNunber = 1
    //答えのボタン
    @IBAction func tapAbswerButton(_ sender: UIButton) {
        qNunber += 1
        
         let filePath = Bundle.main.path(forResource: "PoppinParty", ofType: "plist")
        
        
        let dics = NSDictionary(contentsOfFile: filePath!)
        let dic = dics!["問\(qNunber)"] as! NSDictionary
        //問題文を表示
        let q = dic["Q"] as! String
        displayQuestion(mozi: q)
        
        //a1にdic["A1"]（答え１）を代入
        let a1 = dic["A1"] as! String
        //ボタン(answerButton1)にa1を代入
        answerButton1.setTitle(a1, for: .normal)
        
        let a2 = dic["A2"] as! String
        answerButton2.setTitle(a2, for: .normal)
        
        let a3 = dic["A3"] as! String
        answerButton3.setTitle(a3, for: .normal)
        
        let a4 = dic["A4"] as! String
        answerButton4.setTitle(a4, for: .normal)
        
        
        
        
        
    ///////////////////////////////////////////////
        
       var Correct = dic["Correct"]as! String
        
        var userAnswer: String?
        
        
        func isCorrect() -> Bool{
            if Correct == userAnswer{
                return true
            }
                return false
        }
        
    //////////////////////////////////////////////////
        
        
        
    }
    
    var passedIndex:Int = -1
    
    override func viewDidLoad() {
        
        
        
        
        //"\(passedIndex)"中身を動的に変えたいときに使用
        bandNameLabel.text = "\(passedIndex)"
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    

        

        //Plistの場所を探す
        let filePath = Bundle.main.path(forResource: "PoppinParty", ofType: "plist")
        //Plistの中身をDictionary型で取り出す
        let dics = NSDictionary(contentsOfFile: filePath!)
        
        print(dics)
        
        
        
        let dic = dics!["問1"] as! NSDictionary
        
        
        bandNameLabel.text = dic["name"] as! String
        
        
            //dataの中身を取り出す
            print(dic["Q"])
            print(dic["A1"])
            print(dic["A2"])
            print(dic["A3"])
            print(dic["A4"])
            
            //問題文を表示
            let q = dic["Q"] as! String
            displayQuestion(mozi: q)
            
            //a1にdic["A1"]（答え１）を代入
            let a1 = dic["A1"] as! String
            //ボタン(answerButton1)にa1を代入
            answerButton1.setTitle(a1, for: .normal)
            
            let a2 = dic["A2"] as! String
            answerButton2.setTitle(a2, for: .normal)
            
            let a3 = dic["A3"] as! String
            answerButton3.setTitle(a3, for: .normal)
            
            let a4 = dic["A4"] as! String
            answerButton4.setTitle(a4, for: .normal)
    }

    func displayQuestion(mozi:String){
        quizText.text = mozi
        
        if qNunber == 11 {
            //セグエ(ページ遷移)発動
            performSegue(withIdentifier: "questionResult", sender: nil)
            
        }

    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //繊維先に情報を渡す処理
        
        let qvc:resultViewController = segue.destination as! resultViewController
        
    }
    
    
    


    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
            */
}
