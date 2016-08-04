//
//  ViewController.swift
//  Animacoes
//
//  Created by Iuri Menin on 03/08/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagem: UIImageView!
    
    var count = 1
    var timer = NSTimer()
    var isAnimando = true
    
    @IBAction func atualizaImagem(sender: UIButton) {
    
        if isAnimando == true {
            timer.invalidate()
            isAnimando = false
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.fazAnimacao), userInfo: nil, repeats: true)
            isAnimando = true
        }
        
    }
    
    func fazAnimacao () {
        if count == 5 {
            count = 1
        } else {
            count += 1
        }
        
        imagem.image = UIImage(named: "frame\(count).jpg")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.fazAnimacao), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    override func viewDidLayoutSubviews() {
//        //imagem.center = CGPointMake(imagem.center.x - 400 , imagem.center.y)
//        //imagem.alpha = 0
//        imagem.frame = CGRectMake(100, 20, 0, 0)
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        
//        UIView.animateWithDuration(1) { () -> Void in
//            //self.imagem.center = CGPointMake(self.imagem.center.x + 400, self.imagem.center.y)
//            //self.imagem.alpha = 1
//            self.imagem.frame = CGRectMake(100, 20, 100, 200)
//        }
//    }
}

