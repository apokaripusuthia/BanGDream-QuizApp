//
//  ViewController.swift
//  BanGDream!QuizApp
//
//  Created by アポカリプス・ティア on 2018/06/07.
//  Copyright © 2018年 アポカリプス・ティア. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    var selectedIndex:Int!
    
    @IBAction func goBackFirst(_ segue:UIStoryboardSegue) {}
    
   //プロコトルの設定
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //タップした時の処理
   // @IBAction func tapBandButton(_ sender: UIButton){
        //sender.tagに番号が入っている
      //  print(sender.tag)
        //番号をselectedIndexに入れる
        //selectedIndex = sender.tag
        //セグエ(ページ遷移)発動
        //performSegue(withIdentifier: "titleToQuestion", sender: nil)
    //}
    
  //行数の設定
    var dataList = ["Poppin'Party","Afterglow", "Pastel*Palettes","Roselia","ハローハッピーワールド"]
    
func tableView(_ tableView: UITableView, numberOfRowsInSection
    section: Int) -> Int{
return dataList.count

}

//セルに表示する文字を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for:indexPath)
        
        cell.textLabel?.text = dataList[indexPath.row]
        return cell
        
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






