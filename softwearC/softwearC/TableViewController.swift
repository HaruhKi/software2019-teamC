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

let SyntheticDictionary = Common.getSyntheticDictionary()//総合

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
    }

class TableViewController12: UITableViewController {//智能情報関連
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
}


class TableViewController17: UITableViewController {//研究実験
    let reex = [String] (ReserchExperienceDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return reex.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier17", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = reex[indexPath.row]
        return cell
    }
}

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
}

class TableViewController19: UITableViewController {//総合
    let synthetic = [String] (SyntheticDictionary.keys)
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
}
