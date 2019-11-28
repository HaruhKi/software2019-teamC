//
//  TableViewController2.swift
//  softwearC
//
//  Created by 末光　航大 on 2019/11/26.
//  Copyright © 2019 Kodai Suemitsu. All rights reserved.
//

import UIKit
let CareerDictionary = [
    "キャリア形成入門":[6,2],
    "キャリアデザインとジェンダーⅠ":[6,2],
    "キャリアデザインとジェンダーⅡ":[6,2],
    "海外キャリア形成入門":[6,2],
    "海外職場体験":[6,2],
    "生命保険実務":[6,2],
    "損害保険実務":[6,2],
    "地域企業(自治体)お題解決プログラム":[6,2],
    "日本企業インターシップⅠ":[6,2],
    "日本企業インターシップⅡ":[6,2],
    "キャリア関係特別講義Ⅰ(有償型職場実践プログラム)":[6,2],
    "キャリア関係特別講義Ⅱ(中期インターシップ)":[6,2],
    "キャリア関係特別講義Ⅴ (人生100年時代におけるキャリア開発のための働き方入門)":[6,2],
    "キャリア関係特別講義Ⅲ(石垣ウェルネス地方創生インターシップ)":[6,2],
    "キャリ関係特別講義Ⅳ(カトープレジャーグループKPG HOTEL & RESORT)":[6,2],
]


class TableViewController2: UITableViewController {
    let carreer = [String] (CareerDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return carreer.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier2", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = carreer[indexPath.row]
        return cell
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
