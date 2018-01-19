//
//  ViewController.swift
//  Dicee
//
//  Created by Abhay Tambe on 1/14/18.
//  Copyright © 2018 Abhay Tambe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    var randomDiceIndex1:Int = 0;
    var randomDiceIndex2:Int = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let square = UIView(frame:CGRect(x:0, y:0, width:self.view.frame.width, height:self.view.frame.height));
        square.backgroundColor = UIColor.red;
        //self.view.addSubview(square);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnRollClicked(_ sender: Any) {
        randomDiceIndex1 = Int(arc4random_uniform(6));
        randomDiceIndex2 = Int(arc4random_uniform(6));
        
    }
    
}

