//
//  TableViewController.swift
//  softwearC
//
//  Created by 末光　航大 on 2019/11/26.
//  Copyright © 2019 Kodai Suemitsu. All rights reserved.
//

import UIKit

let Common = CommonClassLists()
let Major = MajorClassLists()

let SocietyDictionary = Common.getSocietyDictionary()//社会
let SportDictionary = Common.getSportsDictionary()//健康運動
let PreparatoryDictionary = Common.getPreparatoryDictionary()//専修
let HumanitiesDictionary = Common.getHumanitiesDictionary()//人文
let CareerDictionary = Common.getCareerDictionary()//キャリア
let NatureDictionary = Common.getNatureDictionary()//自然
let OtherLanguageDictionary = Common.getOtherLanguageDictionary()//外国語
let RyukyuDictionary = Common.getRyukyuDictionary()//琉球
let Synthetic = Common.getSyntheticDictionary()//総合
let RelatedInformationDictionary  = Common.getRelatedInformationDictionary()//情報関係
let RelationalComputerScienceDictionary = Major.getRelationalComputerScienceDictionary()//知能情報関連
let AdvancedComputerScienceDictionary = Major.getAdvancedComputerScienceDictionary()//知能情報アドバンスト
let GeneralExerciseDictionaly = Major.getGeneralExerciseDictionaly()//総合力演習
let InfomationTechnologyDictionary = Major.getInfomationTechnologyDictionary()//情報技術系
let IntelligentInfomationCore = Major.getIntelligentInfomationCore()//知能情報コア
let OptionalBasicMathDictionary = Major.getOptionalBasicMathDictionary()//選択数学基礎
let OptionalEngineeringDictionary = Major.getOptionalEngineeringDictionary()//工学融合
let RequiredBasicMathDictionary = Major.getRequiredBasicMathDictionary()//必修数学基礎
let ReserchExperienceDictionary = Major.getReserchExperienceDictionary()//研究実験

var selectedList :[String:Array<Int>] = [:]

func searchList(key: String,dict: Dictionary<String, Array<Int>>){
    if !key.isEmpty {
        selectedList[key] = dict[key]
    }
    print(selectedList)
}

func delateList(key: String,dict: Dictionary<String, Array<Int>>){
    selectedList[key] = nil
    print(selectedList)
}

func lectureCount(){
    var lectureCounter : [String:Int] = [:]
    var humanitiesNum: Int = 0//0:人文
    var otherlangNum: Int = 0//1:外国語
    var naturalNum: Int = 0//2:自然系
    var societyNum: Int = 0//3:社会系
    var sportNum: Int = 0//4:スポーツ,運動
    var getSyntheticNum: Int = 0//5:総合
    var careerNum: Int = 0//6:キャリア
    var ryukyuNum: Int = 0//7:琉球特色
    var preparateNum: Int = 0//8:専修
    var relatedInfoNum: Int = 0//9:情報関係
    var infoTechNum: Int = 0//11:情報技術系
    var generalExNum: Int = 0//12:総合力演習
    var reserchExNum: Int = 0//13:研究実験
    var reqBasicMathNum: Int = 0//14:必修数学基礎
    var intelInfoCoreNum: Int = 0//15:知能情報コア
    var optEngineerNum: Int = 0//16:工学融合
    var senmonANum: Int = 0//17:選択数学基礎,知能情報アドバンスト,知能情報関連

    for data in selectedList{
        let lectureNum = data.value
        if lectureNum[0] == 0{
            humanitiesNum += lectureNum[1]
            lectureCounter["人文"] = humanitiesNum
        }else if lectureNum[0] == 1{
            otherlangNum += lectureNum[1]
            lectureCounter["外国語"] = otherlangNum
        }else if lectureNum[0] == 2{
            naturalNum += lectureNum[1]
            lectureCounter["自然"] = naturalNum
        }else if lectureNum[0] == 3{
            societyNum += lectureNum[1]
            lectureCounter["社会"] = societyNum
        }else if lectureNum[0] == 4{
            sportNum += lectureNum[1]
            lectureCounter["スポーツ"] = sportNum
        }else if lectureNum[0] == 5{
            getSyntheticNum += lectureNum[1]
            lectureCounter["総合"] = getSyntheticNum
        }else if lectureNum[0] == 6{
            careerNum += lectureNum[1]
            lectureCounter["キャリア"] = careerNum
        }else if lectureNum[0] == 7{
            ryukyuNum += lectureNum[1]
            lectureCounter["琉球"] = ryukyuNum
        }else if lectureNum[0] == 8{
            preparateNum += lectureNum[1]
            lectureCounter["専修"] = preparateNum
        }else if lectureNum[0] == 9{
            relatedInfoNum += lectureNum[1]
            lectureCounter["情報関係"] = relatedInfoNum
        }else if lectureNum[0] == 11{
            infoTechNum += lectureNum[1]
            lectureCounter["情報技術系"] = infoTechNum
        }else if lectureNum[0] == 12{
            generalExNum += lectureNum[1]
            lectureCounter["総合力演習"] = generalExNum
        }else if lectureNum[0] == 13{
            reserchExNum += lectureNum[1]
            lectureCounter["研究実験"] = reserchExNum
        }else if lectureNum[0] == 14{
            reqBasicMathNum += lectureNum[1]
            lectureCounter["必修数学基礎"] = reqBasicMathNum
        }else if lectureNum[0] == 15{
            intelInfoCoreNum += lectureNum[1]
            lectureCounter["知能情報コア"] = intelInfoCoreNum
        }else if lectureNum[0] == 16{
            optEngineerNum += lectureNum[1]
            lectureCounter["工学融合"] = optEngineerNum
        }else if lectureNum[0] == 17{
        senmonANum += lectureNum[1]
        lectureCounter["専門A(選数,知アド,知情関連)"] = senmonANum
    }
    print(lectureCounter)
    }
}

class TableViewController: UITableViewController {//社会
    
    let society = [String] (SocietyDictionary.keys)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  society.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = society[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
         //チェックマークする
        currentCell.accessoryType = .checkmark
        searchList(key: currentCell.textLabel!.text!,dict: SocietyDictionary)
        lectureCount()
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath )!
        delateList(key: currentCell.textLabel!.text!, dict: SocietyDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}


class TableViewController2: UITableViewController {//健康体育
    let sport = [String] (SportDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sport.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier2", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = sport[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: SportDictionary)
        lectureCount()
        currentCell.accessoryType = .checkmark
        //チェックマークする
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        delateList(key: currentCell.textLabel!.text!, dict: SportDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}
class TableViewController3: UITableViewController {//専修
    let preparatory = [String] (PreparatoryDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return preparatory.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier3", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = preparatory[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: PreparatoryDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: PreparatoryDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}

class TableViewController4: UITableViewController {//人文
    let humanities = [String](HumanitiesDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
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
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: HumanitiesDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: HumanitiesDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}

class TableViewController5: UITableViewController {//キャリア
    let career = [String](CareerDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return career.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier5", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = career[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: CareerDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: CareerDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}

class TableViewController6: UITableViewController {//自然
    let nature = [String](NatureDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nature.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier6", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = nature[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: NatureDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: NatureDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}


class TableViewController7: UITableViewController {//外国語
    let other = [String](OtherLanguageDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return other.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier7", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = other[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: OtherLanguageDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: OtherLanguageDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}

class TableViewController8: UITableViewController {//琉球
    
    let ryukyu = [String](RyukyuDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ryukyu.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier8", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = ryukyu[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: RyukyuDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: RyukyuDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}

class TableViewController9: UITableViewController {//情報関係
    
    let information = [String](RelatedInformationDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return information.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier9", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = information[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: RelatedInformationDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: RelatedInformationDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}


class TableViewController10: UITableViewController {//知能情報アドバンスト
    let advance = [String] (AdvancedComputerScienceDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return advance.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier10", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = advance[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: AdvancedComputerScienceDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: AdvancedComputerScienceDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}


class TableViewController11: UITableViewController {//選択数学
    let opmath = [String] (OptionalBasicMathDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return opmath.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier11", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = opmath[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: OptionalBasicMathDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: OptionalBasicMathDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}

class TableViewController12: UITableViewController {//知能情報関連
    let computer = [String] (RelationalComputerScienceDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return computer.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier12", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = computer[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: RelationalComputerScienceDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: RelationalComputerScienceDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}


class TableViewController13: UITableViewController {//総合力演習
    let general = [String] (GeneralExerciseDictionaly.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return general.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier13", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = general[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: GeneralExerciseDictionaly)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: GeneralExerciseDictionaly)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}


class TableViewController14: UITableViewController {//情報技術系
    let infomation = [String] (InfomationTechnologyDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return infomation.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier14", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = infomation[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: InfomationTechnologyDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: InfomationTechnologyDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}

class TableViewController15: UITableViewController {//工学融合
    let opengineer = [String] (OptionalEngineeringDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return opengineer.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier15", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = opengineer[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: OptionalEngineeringDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: OptionalEngineeringDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}


class TableViewController16: UITableViewController {//必修数学
    let remath = [String] (RequiredBasicMathDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return remath.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier16", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = remath[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: RequiredBasicMathDictionary)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: RequiredBasicMathDictionary)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}


//class TableViewController17: UITableViewController {//研究実験
//    let reex = [String] (ReserchExperienceDictionary.keys)
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return reex.count
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier17", for: indexPath)
//
//        // Configure the cell...
//        cell.textLabel?.text = reex[indexPath.row]
//        return cell
//    }
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    //print the text what selected by cell. In case that not find cell, return first row text
//
//        let currentCell = tableView.cellForRow(at: indexPath )!
//    //forced unwrap ! used because the text is optional type
//    //print(currentCell.textLabel!.text! as Any)
//        searchList(key: currentCell.textLabel!.text!,dict: ReserchExperienceDictionary)
//    lectureCount()
//    }
//}

class TableViewController18: UITableViewController {//知能情報コア
    let core = [String] (IntelligentInfomationCore.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return core.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier18", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = core[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict: IntelligentInfomationCore)
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: IntelligentInfomationCore)
        // チェックマークを外す
        currentCell.accessoryType = .none
    }
}


class TableViewController19: UITableViewController {//総合
    let synthetic = [String] (Synthetic.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return synthetic.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier19", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = synthetic[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print the text what selected by cell. In case that not find cell, return first row text
        
        let currentCell = tableView.cellForRow(at: indexPath )!
        //forced unwrap ! used because the text is optional type
        //print(currentCell.textLabel!.text! as Any)
        searchList(key: currentCell.textLabel!.text!,dict:Synthetic )
        lectureCount()
        //チェックマークする
        currentCell.accessoryType = .checkmark
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at:indexPath)!
        
        delateList(key: currentCell.textLabel!.text!, dict: Synthetic)
        // チェックマークを外す
        currentCell.accessoryType = .none

    }
}
