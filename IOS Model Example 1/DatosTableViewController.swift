//
//  DatosTableViewController.swift
//  IOS Model Example 1
//
//  Created by Jorge Luis Limo Arispe on 12/02/17.
//  Copyright © 2017 Jorge Luis Limo Arispe. All rights reserved.
//

import UIKit

class DatosTableViewController: UITableViewController {
    
    
    var array:Array<String> = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                array.append("1.1 Vistas \n")
            case 1:
                array.append("1.2 Navegation \n")
            case 2:
                array.append("1.3 Listas Estaticas \n")
            default:
                array.append("1.4 Diseño Responsive \n")
            }
        }
        
        
        if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                array.append("2.1 Gestos  \n")
            case 1:
                array.append("2.2 Listas Dinamicas  \n")
            default:
                array.append("2.3 Vistas Avanzadas  \n")
            }
        }
        
        
        if indexPath.section == 2 {
            
            switch indexPath.row {
            case 0:
                array.append("3.1 Web Services  \n")
            case 1:
                array.append("3.2 Core Data \n")
            case 2:
                array.append("3.3 Ubicacion  \n")
            default:
                array.append("")
            }
        }
        
        
        if indexPath.section == 2 && indexPath.row == 3 {
            self.performSegue(withIdentifier: "siguiente", sender: self)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let viewController = segue.destination as! DatosRespuestaViewController
        viewController.arrayTemas = array
        
    }
    

    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
     }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
     */


}
