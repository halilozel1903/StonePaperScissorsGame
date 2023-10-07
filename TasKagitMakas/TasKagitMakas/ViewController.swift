//
//  ViewController.swift
//  TasKagitMakas
//
//  Created by Halil Özel on 16.07.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    var myPoints = 0
    var pcPoints = 0
    let array = ["tas","kagit","makas"] // string türde bir dizi oluşturuldu.
    
    // MARK: - IBOutlets
    @IBOutlet weak var myChoiseLabel: UILabel!
    @IBOutlet weak var pcChoiseLabel: UILabel!
    @IBOutlet weak var theEndLabel: UILabel!
    @IBOutlet weak var myPointsLabel: UILabel!
    @IBOutlet weak var pcPointsLabel: UILabel!
    
    
    // MARK: - IBActions
    @IBAction func rockSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected] // A random element will be selected from the array.
        
        if pcSelected == "tas" {
            myChoiseLabel.text = "Sizin seçiminiz : Taş"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Taş"
            theEndLabel.text = "Berabere Kaldınız."
            
            
        }else if pcSelected == "kagit" {
            myChoiseLabel.text = "Sizin seçiminiz : Taş"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Kağıt"
            theEndLabel.text = "Bilgisayar Kazandı."
            
            pcPoints += 1
            
            pcPointsLabel.text = String(pcPoints)
            
        }else if pcSelected == "makas" {
            myChoiseLabel.text = "Sizin seçiminiz : Taş"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Makas"
            theEndLabel.text = "Siz Kazandınız."
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
            
        }
    }
    
    
    // kağıt ile ilgili işlemler
    @IBAction func paperSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected] // A random element will be selected from the array.
        
        if pcSelected == "tas" {
            myChoiseLabel.text = "Sizin seçiminiz : Kağıt"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Taş"
            theEndLabel.text = "Siz kazandınız."
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
            
            
        }else if pcSelected == "kagit" {
            myChoiseLabel.text = "Sizin seçiminiz : Kağıt"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Kağıt"
            theEndLabel.text = "Beraber Kaldınız."
            
            
        }else if pcSelected == "makas" {
            myChoiseLabel.text = "Sizin seçiminiz : Kağıt"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Makas"
            theEndLabel.text = "Bilgisayar Kazandı."
            
            pcPoints += 1
            pcPointsLabel.text = String(pcPoints)
            
        }
    }
    
    // makas ile ilgili işlemler
    @IBAction func scissorSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected] // A random element will be selected from the array.
        
        if pcSelected == "tas" {
            myChoiseLabel.text = "Sizin seçiminiz : Makas"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Taş"
            theEndLabel.text = "Bilgisayar Kazandı."
            pcPoints += 1
            pcPointsLabel.text = String(pcPoints)
            
            
        }else if pcSelected == "kagit" {
            myChoiseLabel.text = "Sizin seçiminiz : Makas"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Kağıt"
            theEndLabel.text = "Siz Kazandınız."
            myPoints += 1
            myPointsLabel.text = String(myPoints)
            
            
        }else if pcSelected == "makas" {
            myChoiseLabel.text = "Sizin seçiminiz : Makas"
            pcChoiseLabel.text = "Bilgisayarın seçimi : Makas"
            theEndLabel.text = "Berabere Kaldınız."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

