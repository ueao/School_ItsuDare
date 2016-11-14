//
//  ViewController.swift
//  ItsuDare
//
//  Created by Aoi Sakaue on 2016/11/02.
//  Copyright © 2016年 Sakaue Aoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //まず使う部品を宣言
    //varは変数、letは定数を宣言する！
    //型は代入したもので自動的に識別されるので明確にしなくともよい
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    //Arrayは配列、と言います
    let itsuArray : [String] = ["一年前","一週間前","昨日","今日"]
    let dokodeArray : [String] = ["ライブハウスで","横浜で","スクールで","結婚式場で"]
    let daregaArray : [String] = ["僕が","先生が","先輩が","ガッキーが"]
    let doshitaArray : [String] = ["歌った","ダンスした","寝た","ライブした"]
    
    var index : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func change() {
        
        //それぞれのラベルに配列の要素を追加する
        //ラベルに配列を代入
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        //indexの値を+1する
        //ボタンを押すごとにnumberの値が上がっていくように
        index = index + 1
        
        //indexの値が3より大きくなったら0に戻す
        if index > 3 {
        index = 0
    }
    }
    
    @IBAction func reset() {
        //それぞれのラベルを元に戻す
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        //indexを初期化する
        index = 0
    }

    @IBAction func random() {
        //乱数を生成して、それぞれのindexの中に入れる
        let itsuIndex = Int(arc4random_uniform(4))
        let dokodeIndex = Int(arc4random_uniform(4))
        let daregaIndex = Int(arc4random_uniform(4))
        let doshitaIndex = Int(arc4random_uniform(4))
        
        //コンソールに出力して、それぞれの値を確かめる
        NSLog("いつ: %d", itsuIndex)
        NSLog("どこで: %d", dokodeIndex)
        NSLog("だれが: %d", daregaIndex)
        NSLog("どうした:%d", doshitaIndex)
        
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]

    }


    
}

