//
//  TableViewController4.swift
//  softwearC
//
//  Created by 末光　航大 on 2019/11/27.
//  Copyright © 2019 Kodai Suemitsu. All rights reserved.
//

import UIKit
let HumanitiesDictionary = [
    "人間と哲学の知":[0,2],
    "心の科学":[0,2],
    "人間関係論":[0,2],
    "人間観と教育":[0,2],
    "日本古典文学の世界":[0,2],
    "文学の楽しみ":[0,2],
    "中国古典文学の世界":[0,2],
    "西洋の歴史と文化":[0,2],
    "コーラスアンサンブルの楽しみ":[0,2],
    "楽しく学ぶギター弾き語りⅠ":[0,2],
    "ステージスタッフ総額活動":[0,2],
    "美術って何？":[0,2],
    "陶芸の世界":[0,2],
    "比較思想文化論":[0,2],
    "日本語研究入門":[0,2],
    "オーケストラの楽しみⅠ":[0,2],
    "人間と哲学の和":[0,2],
    "思考の論理入門":[0,2],
    "人間と宗教":[0,2],
    "西洋思想と日本・中国の思想":[0,2],
    "近代日本の社会と表現":[0,2],
    "小説の社会学":[0,2],
    "ことばの生態":[0,2],
    "ことばの構造と意味":[0,2],
    "日本語のはたらき":[0,2],
    "20世紀の中国文学":[0,2],
    "考古学入門":[0,2],
    "宗教と世界":[0,2],
    "美術の世界":[0,2],
    "楽しく学ぶギター弾き語りⅡ":[0,2],
    "美術と社会":[0,2],
    "オーケストラの楽しみⅡ":[0,2],
]

class TableViewController4: UITableViewController {
let humanities = [String](HumanitiesDictionary.keys)
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
        return humanities.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier4", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = humanities[indexPath.row]
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
