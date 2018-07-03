//
//  ViewController.swift
//  BanGDream!QuizApp
//
//  Created by アポカリプス・ティア on 2018/06/07.
//  Copyright © 2018年 アポカリプス・ティア. All rights reserved.
//

import UIKit


class ViewController: UIViewController
{
    
    var selectedIndex:Int!
    
    @IBAction func goBackFirst(_ segue:UIStoryboardSegue) {}
    
    //タップした時の処理
    @IBAction func tapBandButton(_ sender: UIButton){
    
        
        //sender.tagに番号が入っている
        print(sender.tag)
        //番号をselectedIndexに入れる
        selectedIndex = sender.tag
        //セグエ(ページ遷移)発動
        performSegue(withIdentifier: "titleToQuestion", sender: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    

    
    //セグエの間に発動
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //繊維先に情報を渡す処理
        
       let qvc:questionViewController = segue.destination as! questionViewController
        
        //selectedIndexにはボタンの番号が入っている
        //↑をpassedIndexに入れている
        //次のプロパティ
        qvc.passedIndex = selectedIndex
        
        
    }
    
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}






