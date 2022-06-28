//
//  FriendsTableViewController.swift
//  gbAppVK
//
//  Created by Артем Седов on 26.06.2022.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var friends = [
        User(name: "Андрей", avatar: UIImage(named: "andrey")),
        User(name: "Анастасия", avatar: UIImage(named: "anastasia")),
        User(name: "Варвара", avatar: UIImage(named: "barbara")),
        User(name: "Дмитрий", avatar: UIImage(named: "dmitriy")),
        User(name: "Елизавета", avatar: UIImage(named: "elizaveta")),
        User(name: "Олег", avatar: UIImage(named: "oleg")),
        User(name: "Вова", avatar: UIImage(named: "vova")),
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendsTableViewCell else{
            preconditionFailure("Error")
        }

        cell.friendName.text = friends[indexPath.row].name
        if friends[indexPath.row].avatar != nil {
            cell.friendAvatar.image = friends[indexPath.row].avatar
        } else {
            cell.friendAvatar.image = UIImage(named: "friendPlaceholder")
        }
        cell.friendAvatar.layer.cornerRadius = 25

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAvatar",
           let destinationVC = segue.destination as? AvatarController,
           let indexPath = tableView.indexPathForSelectedRow{
            destinationVC.title = friends[indexPath.row].name
            destinationVC.avatarImage = friends[indexPath.row].avatar
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
