//
//  ViewController.swift
//  sho-ryu-kenApp
//
//  Created by Takahashi Tomoko on 2020/09/10.
//  Copyright © 2020 takatomo.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var charaImage: UIImageView!

    
    var ImageArrayAttack : Array<UIImage> = []
//
    var names = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        while let attackImage = UIImage(named: "attak\(ImageArrayAttack.count + 1)") {
            ImageArrayAttack.append(attackImage)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    @IBAction func attackBtn(_ sender: Any) {
        charaImage.animationImages = ImageArrayAttack
        charaImage.animationDuration = 0.5
        charaImage.animationRepeatCount =  1
        charaImage.startAnimating()
        
    }
    

}

