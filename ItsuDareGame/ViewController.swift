//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 柘植紳太郎 on 2024/06/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsuLabal : UILabel!
    @IBOutlet var dokodeLabel : UILabel!
    @IBOutlet var daregaLabel : UILabel!
    @IBOutlet var doushitaLabel : UILabel!
    
    let itsuArray: [String] = ["1秒前","1分前","1時間前","1日前"]
    let dokodeArray: [String] = ["東京で","名古屋で","大阪で","福岡で"]
    let daregaArray: [String] = ["パックが","とろろが","もりねが","カーキさんが"]
    let doushitaArray: [String] = ["食べた","歩いた","寝た","走った"]
    
    var index: Int = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change() {
        itsuLabal.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doushitaLabel.text = doushitaArray[index]
        
        if index == 3 {
            
            index = 0
        } else {
            
            index = index + 1
        
        }
    }
    
    @IBAction func reset() {
        itsuLabal.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doushitaLabel.text = "----"
        
        index = 0
    }
    
    @IBAction func random() {
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doushitaIndex = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(itsuIndex)")
        print("だれが: \(itsuIndex)")
        print("どうした: \(itsuIndex)")
        
        itsuLabal.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doushitaLabel.text = doushitaArray[doushitaIndex]
    }
}

