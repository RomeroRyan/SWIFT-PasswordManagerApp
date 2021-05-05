//
//  ViewController.swift
//  Final_Project
//
//  Created by Afrasiabi, Shervin on 5/4/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1 : UIButton!
    @IBOutlet var button2 : UIButton!
    @IBOutlet var display : UIStackView!
    var password : String!
    var num_labels : Int!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // initialize the number of labels
        num_labels = 0

    }
    func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@$"
        return String((0..<length).map{ _ in letters.randomElement()!})
    }
    
    
    func create_label(k : Int){
        let label = UILabel()
        password = randomString(length:k)
        label.text = password
        display.addArrangedSubview(label)
        num_labels += 1
    }
    
    @IBAction func pressed(sender: UIButton!){
        if(sender == button1){create_label(k: 12)}
        if(sender == button2){create_label(k: 16)}
    }
    
}

