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
    @IBOutlet var submit : UIButton!
    @IBOutlet var userText : UITextField!
    
    var password : String!
    var num_labels : Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize the number of labels
        num_labels = 0

    }
    func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#$%&+-?<>=^@_;:(){}"
        return String((0..<length).map{ _ in letters.randomElement()!})
    }
    
    
    func create_label_random(k : Int){
        let label = UILabel()
        password = randomString(length:k)
        label.text = password
        display.addArrangedSubview(label)
        num_labels += 1
    }
    
    func create_label_user(k : String) {
        let label = UILabel()
        password = k
        label.text = password
        display.addArrangedSubview(label)
        num_labels += 1
    }
    
    @IBAction func password_random(sender: UIButton!){
        if(sender == button1){create_label_random(k: 12)}
        if(sender == button2){create_label_random(k: 16)}
    }
    
    @IBAction func password_user(sender: UIButton!) {
        let text: String = userText.text!
        if(sender == submit){create_label_user(k: text)}
    }
    
}

