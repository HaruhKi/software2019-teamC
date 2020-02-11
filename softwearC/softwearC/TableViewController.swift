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
let SyntheticDictionar = Common.getSyntheticDictionary()//総合
let RelatedInformationDictionary  = Common.getRelatedInformationDictionary()//情報関係
let RelationalComputerScienceDictionary = Major.getRelationalComputerScienceDictionary()//知能情報関連
let AdvancedComputerScienceDictionary = Major.getAdvancedComputerScienceDictionary()//知能情報アドバンスト
let GeneralExerciseDictionaly = Major.getGeneralExerciseDictionaly()//総合力演習
let InfomationTechnologyDictionary = Major.getInfomationTechnologyDictionary()//情報技術系
let IntelligentInfomationCore = Major.getIntelligentInfomationCore()//知能情報コア
let OptionalBasicMathDictionary = Major.getOptionalBasicMathDictionary()//選択数学基礎
let OptionalEngineeringDictionary = Major.getOptionalEngineeringDictionary()//工学融合
let RequiredBasicMathDictionary = Major.getRequiredBasicMathDictionary()//必修数学基礎
let ResearchExperienceDictionary = Major.getResearchExperienceDictionary()//研究実験

let IntensivelectureDictionary  = Common.getIntensivelectureDictionary() //集中

var selectedList :[String:Array<Double>] =  UserDefaults.standard.dictionary(forKey: "selectedList") as? [String : Array<Double>] ?? [:]
var lectureCounter : [String:Double] = [:]

var humanitiesNum: Double = 0//0:人文
var otherlangNum: Double = 0//1:外国語
var naturalNum: Double = 0//2:自然系
var societyNum: Double = 0//3:社会系
var sportNum: Double = 0//4:スポーツ,運動
var getSyntheticNum: Double = 0//5:総合
var careerNum: Double = 0//6:キャリア
var ryukyuNum: Double = 0//7:琉球特色
var preparateNum: Double = 0//8:専修
var relatedInfoNum: Double = 0//9:情報関係
var infoTechNum: Double = 0//11:情報技術系
var generalExNum: Double = 0//12:総合力演習
var ResearchExNum: Double = 0//13:研究実験
var reqBasicMathNum: Double = 0//14:必修数学基礎
var intelInfoCoreNum: Double = 0//15:知能情報コア
var optEngineerNum: Double = 0//16:工学融合
var senmonANum: Double = 0//17:選択数学基礎,知能情報アドバンスト,知能情報関連*/


func searchList(key: String,dict: Dictionary<String, Array<Double>>){
    if !key.isEmpty {
        selectedList[key] = dict[key]
    }
    print("|select|")
//    print(selectedList)
}

func deleteList(key: String,dict: Dictionary<String, Array<Double>>){
    selectedList[key] = nil
    initlectureCount()
    print("|delete|")
//    print(selectedList)
}

func initlectureCount(){
    for data in lectureCounter{
        lectureCounter[data.key] = 0
        print("all delete ->",data.key)
    }
}

func lectureCount(){
    //var lectureCounter : [String:Double] = [:]
        
    humanitiesNum = 0//0:人文
    otherlangNum = 0//1:外国語
    naturalNum = 0//2:自然系
    societyNum = 0//3:社会系
    sportNum = 0//4:スポーツ,運動
    getSyntheticNum = 0//5:総合
    careerNum = 0//6:キャリア
    ryukyuNum = 0//7:琉球特色
    preparateNum = 0//8:先修
    relatedInfoNum = 0//9:情報関係
    infoTechNum = 0//11:情報技術系
    generalExNum = 0//12:総合力演習
    ResearchExNum = 0//13:研究実験
    reqBasicMathNum = 0//14:必修数学基礎
    intelInfoCoreNum = 0//15:知能情報コア
    optEngineerNum = 0//16:工学融合
    senmonANum = 0//17:選択数学基礎,知能情報アドバンスト,知能情報関連

    for data in selectedList{
        let lectureNum = data.value
        switch lectureNum[0] {
        case 0:
            humanitiesNum += lectureNum[1]
            lectureCounter["人文"] = humanitiesNum
        case 1:
            otherlangNum += lectureNum[1]
            lectureCounter["外国語"] = otherlangNum
        case 2:
            naturalNum += lectureNum[1]
            lectureCounter["自然"] = naturalNum
        case 3:
            societyNum += lectureNum[1]
            lectureCounter["社会"] = societyNum
        case 4:
            sportNum += lectureNum[1]
            lectureCounter["スポーツ"] = sportNum
        case 5:
            getSyntheticNum += lectureNum[1]
            lectureCounter["総合"] = getSyntheticNum
        case 6:
            careerNum += lectureNum[1]
            lectureCounter["キャリア"] = careerNum
        case 7:
            ryukyuNum += lectureNum[1]
            lectureCounter["琉球"] = ryukyuNum
        case 8:
            preparateNum += lectureNum[1]
            lectureCounter["先修"] = preparateNum
        case 9:
            relatedInfoNum += lectureNum[1]
            lectureCounter["情報関連"] = relatedInfoNum
        case 11:
            infoTechNum += lectureNum[1]
            lectureCounter["情報技術系"] = infoTechNum
        case 12:
            generalExNum += lectureNum[1]
            lectureCounter["総合力演習"] = generalExNum
        case 13:
            ResearchExNum += lectureNum[1]
            lectureCounter["研究実験"] = ResearchExNum
        case 14:
            reqBasicMathNum += lectureNum[1]
            lectureCounter["必修数学基礎"] = reqBasicMathNum
        case 15:
            intelInfoCoreNum += lectureNum[1]
            lectureCounter["知能情報コア"] = intelInfoCoreNum
        case 16:
            optEngineerNum += lectureNum[1]
            lectureCounter["工学融合"] = optEngineerNum
        case 17:
            senmonANum += lectureNum[1]
            lectureCounter["専門A(選数,知アド,知情関連)"] = senmonANum
        default:
            print(lectureCounter)
        }
    }
}

let society = [String] (SocietyDictionary.keys)
let sport = [String] (SportDictionary.keys)
let preparatory = [String] (PreparatoryDictionary.keys)
let humanities = [String](HumanitiesDictionary.keys)
let career = [String](CareerDictionary.keys)
let nature = [String](NatureDictionary.keys)
let other = [String](OtherLanguageDictionary.keys)
let ryukyu = [String](RyukyuDictionary.keys)
let reinformation = [String](RelatedInformationDictionary.keys)
let advance = [String] (AdvancedComputerScienceDictionary.keys)
let opmath = [String] (OptionalBasicMathDictionary.keys)
let computer = [String] (RelationalComputerScienceDictionary.keys)
let general = [String] (GeneralExerciseDictionaly.keys)
let infomationtec = [String] (InfomationTechnologyDictionary.keys)
let opengineer = [String] (OptionalEngineeringDictionary.keys)
let remath = [String] (RequiredBasicMathDictionary.keys)
let reex = [String] (ResearchExperienceDictionary.keys)
let core = [String] (IntelligentInfomationCore.keys)
let synthetic = [String](SyntheticDictionar.keys)
let Intensive = [String](IntensivelectureDictionary .keys)

class TableViewController: UITableViewController {//社会
    
    let sortsociety = society.sorted()//五十音でソート
    var checkMarkArray: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        print(selectedList)
        if userDefaults.array(forKey: "checkmarkarray") == nil {//初期状態の時
            for _ in 0 ... society.count - 1 {
                checkMarkArray.append(false)
            }
            UserDefaults.standard.set(checkMarkArray, forKey: "checkmarkarray")
        } else {//2回目以降
            checkMarkArray = UserDefaults.standard.array(forKey: "checkmarkarray") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  society.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = sortsociety[indexPath.row]
        
        if checkMarkArray[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray[indexPath.row] = changeBool(value: checkMarkArray[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: SocietyDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: SocietyDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray, forKey: "checkmarkarray")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}

class TableViewController2: UITableViewController {//健康体育
    let sortsport = sport.sorted()
    var checkMarkArray2: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        print(selectedList)
        if userDefaults.array(forKey: "checkmarkarray2") == nil {//初期状態の時
            for _ in 0 ... sport.count - 1 {
                checkMarkArray2.append(false)
            }
            UserDefaults.standard.set(checkMarkArray2, forKey: "checkmarkarray2")
        } else {//2回目以降
            checkMarkArray2 = UserDefaults.standard.array(forKey: "checkmarkarray2") as! [Bool]//前回の保存状態を表示
        }
        
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  sport.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier2", for: indexPath)
        cell.textLabel?.text = sortsport[indexPath.row]
        
        if checkMarkArray2[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray2[indexPath.row] = changeBool(value: checkMarkArray2[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray2[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: SportDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: SportDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray2, forKey: "checkmarkarray2")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}
class TableViewController3: UITableViewController {//専修
    let sortpreparatory = preparatory.sorted()//五十音でソート
    var checkMarkArray3 : [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        print(selectedList)
        if userDefaults.array(forKey: "checkmarkarray3") == nil {//初期状態の時
            for _ in 0 ... preparatory.count - 1 {
                checkMarkArray3 .append(false)
            }
            UserDefaults.standard.set(checkMarkArray3 , forKey: "checkmarkarray3")
        } else {//2回目以降
            checkMarkArray3  = UserDefaults.standard.array(forKey: "checkmarkarray3") as! [Bool]//前回の保存状態を表示
        }
        
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  preparatory.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier3", for: indexPath)
        cell.textLabel?.text = sortpreparatory[indexPath.row]
        
        if checkMarkArray3 [indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray3 [indexPath.row] = changeBool(value: checkMarkArray3 [indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray3 [indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: PreparatoryDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: PreparatoryDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray3 , forKey: "checkmarkarray3")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()

    }
}

class TableViewController4: UITableViewController {//人文
    let sorthumanities = humanities.sorted()//五十音でソート
    var checkMarkArray4: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()

        selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as? [String : Array<Double>] ?? [:]//前回保存した講義情報を取得
                
        if userDefaults.array(forKey: "checkmarkarray4") == nil{//初期状態の時
            for _ in 0 ... humanities.count - 1 {
                checkMarkArray4.append(false)
            }
            UserDefaults.standard.set(checkMarkArray4, forKey: "checkmarkarray4")
        } else {//2回目以降
            checkMarkArray4 = UserDefaults.standard.array(forKey: "checkmarkarray4") as! [Bool]//前回の保存状態を表示
        }
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  humanities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier4", for: indexPath)
        cell.textLabel?.text = sorthumanities[indexPath.row]
        
        if checkMarkArray4[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        checkMarkArray4[indexPath.row] = changeBool(value: checkMarkArray4[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray4[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: HumanitiesDictionary)
            lectureCount()
//            print(selectedList)
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: HumanitiesDictionary)
            lectureCount()
//            print(selectedList)
        }
        UserDefaults.standard.set(checkMarkArray4, forKey: "checkmarkarray4")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
}

class TableViewController5: UITableViewController {//キャリア
    let sortcareer = career.sorted()//五十音でソート
    var checkMarkArray5: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        print(selectedList)
        if userDefaults.array(forKey: "checkmarkarray5") == nil {//初期状態の時
            for _ in 0 ... career.count - 1 {
                checkMarkArray5.append(false)
            }
            UserDefaults.standard.set(checkMarkArray5, forKey: "checkmarkarray5")
        } else {//2回目以降
            checkMarkArray5 = UserDefaults.standard.array(forKey: "checkmarkarray5") as! [Bool]//前回の保存状態を表示
        }
        
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  career.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier5", for: indexPath)
        cell.textLabel?.text = sortcareer[indexPath.row]
        
        if checkMarkArray5[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray5[indexPath.row] = changeBool(value: checkMarkArray5[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray5[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: CareerDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict:CareerDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray5, forKey: "checkmarkarray5")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
}

class TableViewController6: UITableViewController {//自然
    
    let sortnature = nature.sorted()//五十音でソート
    var checkMarkArray6: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        print(selectedList)
        if userDefaults.array(forKey: "checkmarkarray6") == nil {//初期状態の時
            for _ in 0 ... nature.count - 1 {
                checkMarkArray6.append(false)
            }
            UserDefaults.standard.set(checkMarkArray6, forKey: "checkmarkarray6")
        } else {//2回目以降
            checkMarkArray6 = UserDefaults.standard.array(forKey: "checkmarkarray6") as! [Bool]//前回の保存状態を表示
        }
        
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  nature.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier6", for: indexPath)
        cell.textLabel?.text = sortnature[indexPath.row]
        
        if checkMarkArray6[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray6[indexPath.row] = changeBool(value: checkMarkArray6[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray6[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict:NatureDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: NatureDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray6, forKey: "checkmarkarray6")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
}


class TableViewController7: UITableViewController {//外国語
    
    let sortother = other.sorted()//五十音でソート
    var checkMarkArray7: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray7") == nil {//初期状態の時
            for _ in 0 ... other.count - 1 {
                checkMarkArray7.append(false)
            }
            UserDefaults.standard.set(checkMarkArray7, forKey: "checkmarkarray7")
        } else {//2回目以降
            checkMarkArray7 = UserDefaults.standard.array(forKey: "checkmarkarray7") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray7)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  other.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier7", for: indexPath)
        cell.textLabel?.text = sortother[indexPath.row]
        
        if checkMarkArray7[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray7[indexPath.row] = changeBool(value: checkMarkArray7[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray7[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: OtherLanguageDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: OtherLanguageDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray7, forKey: "checkmarkarray7")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()

    }
}

class TableViewController8: UITableViewController {//琉球
    
    let sortryukyu = ryukyu.sorted()//五十音でソート
    var checkMarkArray8: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray8") == nil {//初期状態の時
            for _ in 0 ... ryukyu.count - 1 {
                checkMarkArray8.append(false)
            }
            UserDefaults.standard.set(checkMarkArray8, forKey: "checkmarkarray8")
        } else {//2回目以降
            checkMarkArray8 = UserDefaults.standard.array(forKey: "checkmarkarray8") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray8)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  ryukyu.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier8", for: indexPath)
        cell.textLabel?.text = sortryukyu[indexPath.row]
        
        if checkMarkArray8[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray8[indexPath.row] = changeBool(value: checkMarkArray8[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray8[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: RyukyuDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: RyukyuDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray8, forKey: "checkmarkarray8")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}

class TableViewController9: UITableViewController {//情報関係
    
    let sortreinfomation = reinformation.sorted()//五十音でソート
    var checkMarkArray9: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray9") == nil {//初期状態の時
            for _ in 0 ... reinformation.count - 1 {
                checkMarkArray9.append(false)
            }
            UserDefaults.standard.set(checkMarkArray9, forKey: "checkmarkarray9")
        } else {//2回目以降
            checkMarkArray9 = UserDefaults.standard.array(forKey: "checkmarkarray9") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray9)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  reinformation.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier9", for: indexPath)
        cell.textLabel?.text = sortreinfomation[indexPath.row]
        
        if checkMarkArray9[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray9[indexPath.row] = changeBool(value: checkMarkArray9[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray9[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: RelatedInformationDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: RelatedInformationDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray9, forKey: "checkmarkarray9")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}


class TableViewController10: UITableViewController {//知能情報アドバンスト
    
    let sortadvance = advance.sorted()//五十音でソート
    var checkMarkArray10: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray10") == nil {//初期状態の時
            for _ in 0 ... advance.count - 1 {
                checkMarkArray10.append(false)
            }
            UserDefaults.standard.set(checkMarkArray10, forKey: "checkmarkarray10")
        } else {//2回目以降
            checkMarkArray10 = UserDefaults.standard.array(forKey: "checkmarkarray10") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray10)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  advance.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier10", for: indexPath)
        cell.textLabel?.text = sortadvance[indexPath.row]
        
        if checkMarkArray10[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray10[indexPath.row] = changeBool(value: checkMarkArray10[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray10[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: AdvancedComputerScienceDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: AdvancedComputerScienceDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray10, forKey: "checkmarkarray10")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}


class TableViewController11: UITableViewController {//選択数学
    let sortopmath = opmath.sorted()//五十音でソート
    var checkMarkArray11: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray11") == nil {//初期状態の時
            for _ in 0 ... opmath.count - 1 {
                checkMarkArray11.append(false)
            }
            UserDefaults.standard.set(checkMarkArray11, forKey: "checkmarkarray11")
        } else {//2回目以降
            checkMarkArray11 = UserDefaults.standard.array(forKey: "checkmarkarray11") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray11)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  opmath.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier11", for: indexPath)
        cell.textLabel?.text = sortopmath[indexPath.row]
        
        if checkMarkArray11[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray11[indexPath.row] = changeBool(value: checkMarkArray11[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray11[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: OptionalBasicMathDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict:OptionalBasicMathDictionary
            )
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray11, forKey: "checkmarkarray11")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}

class TableViewController12: UITableViewController {//知能情報関連
    
    let sortcomputer = computer.sorted()//五十音でソート
    var checkMarkArray12: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray12") == nil {//初期状態の時
            for _ in 0 ... computer.count - 1 {
                checkMarkArray12.append(false)
            }
            UserDefaults.standard.set(checkMarkArray12, forKey: "checkmarkarray12")
        } else {//2回目以降
            checkMarkArray12 = UserDefaults.standard.array(forKey: "checkmarkarray12") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray12)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  computer.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier12", for: indexPath)
        cell.textLabel?.text = sortcomputer[indexPath.row]
        
        if checkMarkArray12[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray12[indexPath.row] = changeBool(value: checkMarkArray12[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray12[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict:RelationalComputerScienceDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: RelationalComputerScienceDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray12, forKey: "checkmarkarray12")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
}


class TableViewController13: UITableViewController {//総合力演習
    
    let sortgeneral = general.sorted()//五十音でソート
    var checkMarkArray13: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray13") == nil {//初期状態の時
            for _ in 0 ... general.count - 1 {
                checkMarkArray13.append(false)
            }
            UserDefaults.standard.set(checkMarkArray13, forKey: "checkmarkarray13")
        } else {//2回目以降
            checkMarkArray13 = UserDefaults.standard.array(forKey: "checkmarkarray13") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray13)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  general.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier13", for: indexPath)
        cell.textLabel?.text = sortgeneral[indexPath.row]
        
        if checkMarkArray13[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray13[indexPath.row] = changeBool(value: checkMarkArray13[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray13[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: GeneralExerciseDictionaly)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: GeneralExerciseDictionaly)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray13, forKey: "checkmarkarray13")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}


class TableViewController14: UITableViewController {//情報技術系
    
    let sortinfomationtec = infomationtec.sorted()//五十音でソート
    var checkMarkArray14: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray14") == nil {//初期状態の時
            for _ in 0 ... infomationtec.count - 1 {
                checkMarkArray14.append(false)
            }
            UserDefaults.standard.set(checkMarkArray14, forKey: "checkmarkarray14")
        } else {//2回目以降
            checkMarkArray14 = UserDefaults.standard.array(forKey: "checkmarkarray14") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray14)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  infomationtec.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier14", for: indexPath)
        cell.textLabel?.text = sortinfomationtec[indexPath.row]
        
        if checkMarkArray14[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray14[indexPath.row] = changeBool(value: checkMarkArray14[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray14[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: InfomationTechnologyDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: InfomationTechnologyDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray14, forKey: "checkmarkarray14")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}

class TableViewController15: UITableViewController {//工学融合
    
    let sortopengineer = opengineer.sorted()//五十音でソート
    var checkMarkArray15: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray15") == nil {//初期状態の時
            for _ in 0 ... opengineer.count - 1 {
                checkMarkArray15.append(false)
            }
            UserDefaults.standard.set(checkMarkArray15, forKey: "checkmarkarray15")
        } else {//2回目以降
            checkMarkArray15 = UserDefaults.standard.array(forKey: "checkmarkarray15") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray15)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  opengineer.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier15", for: indexPath)
        cell.textLabel?.text = sortopengineer[indexPath.row]
        
        if checkMarkArray15[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray15[indexPath.row] = changeBool(value: checkMarkArray15[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray15[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: OptionalEngineeringDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: OptionalEngineeringDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray15, forKey: "checkmarkarray15")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()

    }
}


class TableViewController16: UITableViewController {//必修数学
    
    let sortremath = remath.sorted()//五十音でソート
    var checkMarkArray16: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray16") == nil {//初期状態の時
            for _ in 0 ... remath.count - 1 {
                checkMarkArray16.append(false)
            }
            UserDefaults.standard.set(checkMarkArray16, forKey: "checkmarkarray16")
        } else {//2回目以降
            checkMarkArray16 = UserDefaults.standard.array(forKey: "checkmarkarray16") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray16)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  remath.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier16", for: indexPath)
        cell.textLabel?.text = sortremath[indexPath.row]
        
        if checkMarkArray16[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray16[indexPath.row] = changeBool(value: checkMarkArray16[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray16[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: RequiredBasicMathDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: RequiredBasicMathDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray16, forKey: "checkmarkarray16")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}


class TableViewController17: UITableViewController {//研究実験
    let sortreex = reex.sorted()//五十音でソート
    var checkMarkArray17: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray17") == nil {//初期状態の時
            for _ in 0 ... reex.count - 1 {
                checkMarkArray17.append(false)
            }
            UserDefaults.standard.set(checkMarkArray17, forKey: "checkmarkarray17")
        } else {//2回目以降
            checkMarkArray17 = UserDefaults.standard.array(forKey: "checkmarkarray17") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray17)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  reex.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier17", for: indexPath)
        cell.textLabel?.text = sortreex[indexPath.row]
        
        if checkMarkArray17[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray17[indexPath.row] = changeBool(value: checkMarkArray17[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray17[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: ResearchExperienceDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: ResearchExperienceDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray17, forKey: "checkmarkarray17")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
    
}

class TableViewController18: UITableViewController {//知能情報コア
    let sortcore = core.sorted()//五十音でソート
    var checkMarkArray18: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray18") == nil {//初期状態の時
            for _ in 0 ... core.count - 1 {
                checkMarkArray18.append(false)
            }
            UserDefaults.standard.set(checkMarkArray18, forKey: "checkmarkarray18")
        } else {//2回目以降
            checkMarkArray18 = UserDefaults.standard.array(forKey: "checkmarkarray18") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray18)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  core.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier18", for: indexPath)
        cell.textLabel?.text = sortcore[indexPath.row]
        
        if checkMarkArray18[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray18[indexPath.row] = changeBool(value: checkMarkArray18[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray18[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict:IntelligentInfomationCore)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: IntelligentInfomationCore)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray18, forKey: "checkmarkarray18")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
}


class TableViewController19: UITableViewController {//総合
    
    let sortsynthetic = synthetic.sorted()//五十音でソート
    var checkMarkArray19: [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        
        if userDefaults.array(forKey: "checkmarkarray19") == nil {//初期状態の時
            for _ in 0 ... synthetic.count - 1 {
                checkMarkArray19.append(false)
            }
            UserDefaults.standard.set(checkMarkArray19, forKey: "checkmarkarray19")
        } else {//2回目以降
            checkMarkArray19 = UserDefaults.standard.array(forKey: "checkmarkarray19") as! [Bool]//前回の保存状態を表示
        }
        print(checkMarkArray19)
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  synthetic.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier19", for: indexPath)
        cell.textLabel?.text = sortsynthetic[indexPath.row]
        
        if checkMarkArray19[indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        
        checkMarkArray19[indexPath.row] = changeBool(value: checkMarkArray19[indexPath.row])//クリックした講義のboolを変換
        
        if checkMarkArray19[indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: SyntheticDictionar)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: SyntheticDictionar)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray19, forKey: "checkmarkarray19")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
}

class TableViewController20: UITableViewController {//共通集中
    let sortintensive = Intensive.sorted()//五十音でソート
    var checkMarkArray20 : [Bool] = []
    let userDefaults = UserDefaults.standard//保存機能
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selectedList = UserDefaults.standard.dictionary(forKey: "selectedList") as! [String : Array<Double>]//前回保存した講義情報を取得
        print(selectedList)
        if userDefaults.array(forKey: "checkmarkarray20") == nil {//初期状態の時
            for _ in 0 ... Intensive.count - 1 {
                checkMarkArray20 .append(false)
            }
            UserDefaults.standard.set(checkMarkArray20 , forKey: "checkmarkarray20")
        } else {//2回目以降
            checkMarkArray20  = UserDefaults.standard.array(forKey: "checkmarkarray20") as! [Bool]//前回の保存状態を表示
        }
        
        print(Intensive.count)
        print(checkMarkArray20)
    }
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  Intensive.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier20", for: indexPath)
        cell.textLabel?.text = sortintensive[indexPath.row]
        if checkMarkArray20 [indexPath.row] == true {//trueの時はチェック
            cell.accessoryType = .checkmark
        } else {//falseの時はチェックなし
            cell.accessoryType = .none
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath )!
        checkMarkArray20 [indexPath.row] = changeBool(value: checkMarkArray20 [indexPath.row])//クリックした講義のboolを変換
        if checkMarkArray20 [indexPath.row] == true {//クリックした講義がチェックされた時
            searchList(key: currentCell.textLabel!.text!,dict: IntensivelectureDictionary)
            lectureCount()
        }else{//クリックした講義がチェックなしの時
            deleteList(key: currentCell.textLabel!.text!, dict: IntensivelectureDictionary)
            lectureCount()
        }
        UserDefaults.standard.set(checkMarkArray20 , forKey: "checkmarkarray20")//データ保存
        UserDefaults.standard.set(selectedList,forKey: "selectedList")
        self.tableView.reloadData()//リロード
    }
    func changeBool(value: Bool) -> Bool {//true、falseの変更の関数
        if value == true {
            return false
        } else {
            return true
        }
    }
    func viewWillAppear() {
        self.tableView.reloadData()
    }
}
