//
//  HomeFormTableViewController.swift
//  TableViewApp
//
//  Created by Kadir Hocaoğlu on 17.08.2023.
//

import UIKit

class HomeFormTableViewController: UITableViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var sinceTextField: UITextField!
    
    var place: Places?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  segue.identifier == "saveUnwind" else { return }
        let name = nameTextField.text!
        let description = descriptionTextField.text!
        let since = Int(sinceTextField.text ?? "0")!
        
        place = Places(name: name, description: description, since: since)
                
    }
    
}
