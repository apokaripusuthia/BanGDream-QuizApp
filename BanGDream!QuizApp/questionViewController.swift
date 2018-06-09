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
    
    var passedIndex:Int = -1
    
    override func viewDidLoad() {
        
        //"\(passedIndex)"中身を動的に変えたいときに使用
        bandNameLabel.text = "\(passedIndex)"
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
