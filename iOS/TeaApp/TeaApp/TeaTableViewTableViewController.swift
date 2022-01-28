//
//  TeaTableViewTableViewController.swift
//  TeaApp
//
//  Created by Lily Cornell on 3/15/21.
//

import UIKit

class TeaTableViewTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teaTypes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tea = teaTypes[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: tea.type.rawValue, for: indexPath)

        // Configure the cell...
        cell.textLabel!.text = tea.name
        
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        guard let teaViewController = segue.destination as? TeaViewController else {
            
            return
        }
        
        guard let cell = sender as? UITableViewCell else {
            
            return
            
        }
        guard let indexPath = self.tableView.indexPath(for: cell) else {
            return
            
        }
        teaViewController.tea = teaTypes[indexPath.row]
    }
}
