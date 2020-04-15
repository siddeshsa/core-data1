//
//  ViewController.swift
//  core data
//
//  Created by mac on 15/04/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var Items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Todos"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)as UITableViewCell
        cell.textLabel!.text = Items[indexPath.row]
        
        return cell
    }
    
    
    @IBAction func addItem(_ sender: Any) {
        var alert = UIAlertController(title: "New Item", message: "Add a new Item", preferredStyle:.alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default)
        { (action)-> Void in
        
            let textField = alert.textFields![0] as UITextField
            self.Items.append(textField.text!)
            self.tableView.reloadData()
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
       
      
        
        present(alert, animated: true, completion: nil)
            
            
            
    }
    

}


