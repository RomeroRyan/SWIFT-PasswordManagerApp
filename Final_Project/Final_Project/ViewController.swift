//
//  ViewController.swift
//  Final_Project
//
//  Created by,
//  Ryan Romero         CWID 889823894
//  Shervin Afrasiabi   CWID 887958510
//  Due Monday May 17th 2021

import UIKit

class ViewController: UIViewController {
    
    // we begin by initialzing our Storyboard Elements and link them
    // as IBOutlet variables
    @IBOutlet var button1 : UIButton!
    @IBOutlet var button2 : UIButton!
    @IBOutlet var table : UITableView!
    @IBOutlet var submit : UIButton!
    @IBOutlet var userText : UITextField!
    @IBOutlet var removebutton: UIButton!

    // we also initialize a a string variable and array to store our generated values
    var password : String!
    var array = [String]()
    
    // in our viewDidLoad() we simple initialize our table's delegate and dataSource
    // which you will see as extensions of the ViewController at the bottom of this file
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self

    }
    // randomString Takens an integer input which determines the length of the string
    // and returns a random selection of characters from our variable letters
    func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#$%&+-?<>=^@_;:(){}"
        return String((0..<length).map{ _ in letters.randomElement()!})
    }
    //This Function call creates a password of length K and inserts the password
    // into our password array. The table is then refreshed to show updated data
    func create_cell_random(k : Int){
        password = randomString(length:k)
        array.insert(password, at: 0)
        table.reloadData()
    }
    // This function stores the user created password into the password array,
    // and once again refreshes the table to show the updated data
    func create_cell_user(k : String) {
        password = k
        array.insert(password, at: 0)
        table.reloadData()
    }
    // This Storyboard Function determines which button was pressed between generate-12
    // and generate-16, and calls the create_cell_random function of appropriate length
    @IBAction func password_random(sender: UIButton!){
        if(sender == button1){create_cell_random(k: 12)}
        if(sender == button2){create_cell_random(k: 16)}
    }
    // This Storyboard Function acquires input from the userTest Field and calls the
    // create_cell_user function with the text as input
    @IBAction func password_user(sender: UIButton!) {
        let text: String = userText.text!
        if(sender == submit){create_cell_user(k: text)}
    }
    // This Storyboard Function toggles the edit mode in the table, allowing you to
    // remove elements from the list as well as removing them from the password array
    @IBAction func Remove(sender: UIButton!) {
        if table.isEditing == false {
            table.isEditing = true
        }
        else {
            table.isEditing = false
        }
    }
}

// This code copies the string that you press on into your clipboard, allowing you
// to easily copy and paste the passwords you generate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UIPasteboard.general.string = array[indexPath.row]
    }
}

extension ViewController: UITableViewDataSource {
    // This function returns the number of rows in the table, which also happens to be the
    // number of elements in our array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    // This function populates one "cell" with the element in our password array at the
    // row's index. We return this cell for the table to populate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    // This function determines what happens when the delete button is pressed during
    // the editing mode function described above.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array.remove(at: indexPath.row)
            table.reloadData()
    }
    }
}


