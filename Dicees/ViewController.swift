//
//  ViewController.swift
//  Dicees
//
//  Created by Treinamento on 8/15/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variaveis declaradas
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var random1 : Int = 0
    var random2 : Int = 0
    
    @IBOutlet weak var imageDicee1: UIImageView!
    @IBOutlet weak var imageDicee2: UIImageView!
    //fim da variaveis
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
        updateDiceFaces()
    }

    //quando o celular tremer ira executar a aplicacao
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceFaces()
    }
    
    //ligacao do botao e call na funcao
    @IBAction func RollButton(_ sender: UIButton) {
       updateDiceFaces()
    }
    
    //funcao para mudar faces
    func updateDiceFaces(){
        
        random1 = Int.random(in: 0 ... 5)
        random2 = Int.random(in: 0 ... 5)
        
        imageDicee2.image = UIImage(named: diceArray[random2])
        imageDicee1.image = UIImage(named: diceArray[random1])

    }
    //fechamento da classe
}

