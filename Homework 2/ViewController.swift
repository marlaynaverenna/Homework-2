//
//  ViewController.swift
//  Homework 2
//
//  Created by Marlayna Verenna on 2/7/20.
//  Copyright © 2020 Marlayna Verenna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var madlib : String = "It is the championship point. She walked up to the baseline, took a deep breath, and got ready to serve. Her opponent is a <adjective> player, making this a tough match. She threw up the <noun> and the point began. She <verb> back and forth across the court. Her opponent wasn't giving up. As the point dragged on, she felt <adjective2>. Finally, she saw an opportunity for the backhand winner and took it. She has just won the Australian Open and to celebrate she held up the championship <noun2>."
   
    @IBOutlet weak var adjective: UITextField!
    @IBOutlet weak var noun: UITextField!
    @IBOutlet weak var verb: UITextField!
    @IBOutlet weak var adjective2: UITextField!
    @IBOutlet weak var noun2: UITextField!
    @IBOutlet weak var madlibText: UITextView!
    
    
    @IBAction func goButton(_ sender: Any) {
        //adjective.text = madlibText.text
        //noun.text = madlibText.text
        //verb.text = madlibText.text
        //adjective2.text = madlibText.text
        //noun2.text = madlibText.text
        madlibText.text = madlib.replacingOccurrences(of: "<adjective>", with: adjective.text!)
        
        madlibText.text = madlibText.text?.replacingOccurrences(of: "<noun>", with: noun.text!)
        
        madlibText.text = madlibText.text?.replacingOccurrences(of: "<verb>", with: verb.text!)
        
        madlibText.text = madlibText.text?.replacingOccurrences(of: "<adjective2>", with: adjective2.text!)
        
        madlibText.text = madlibText.text?.replacingOccurrences(of: "<noun2>", with: noun2.text!)

    
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

