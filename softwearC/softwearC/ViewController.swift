//
//  ViewController.swift
//  softwearC
//
//  Created by 山城怜以 on 2019/12/17.
//  Copyright © 2019 Kodai Suemitsu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        lectureCount()
        //人文
        let label = UILabel()
        let lecture_num = lectureCounter["人文"]
        print(lecture_num ?? "no item")
        
        if (lecture_num != nil){
            label.text = String("\(lecture_num ?? 0)"+"/2")
            if(Double(lecture_num!) >= 2.0){
                label.textColor = UIColor.red
            }
        }
        else{
            label.text = "0 /2"
            print(humanitiesNum)
        }
        label.font = label.font.withSize(30)//sizeTOFitの前にいれないと文字が切れる
        label.sizeToFit()
        label.center = CGPoint(x: 300, y: 52) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label)
    
        
        //社会
        let label2 = UILabel()
        let lectureNum = lectureCounter["社会"]
        if (lecture_num != nil){
            label2.text = String("\(lectureNum ?? 0)"+"/2")
            if(Double(lecture_num!) >= 2.0){
                label2.textColor = UIColor.red
            }
        }
        else{
            label2.text = "0 /2"
        }
        label2.font = label2.font.withSize(30)
        label2.sizeToFit()
        label2.center = CGPoint(x: 300, y: 112) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label2)
        
        //自然
        let label3 = UILabel()
        if let natureCredit = lectureCounter["自然"]{
            label3.text = String("\(natureCredit)"+"/0")
            if(Double(natureCredit) >= 1.0){
                label3.textColor = UIColor.red
            }
        }
        else{
            label3.text = "0 /0"
        }
        label3.font = label3.font.withSize(30)
        label3.sizeToFit()
        label3.center = CGPoint(x: 300, y: 172) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label3)
        
        //総合
        let label4 = UILabel()
        if let syntheticCredit = lectureCounter["総合"]{
            label4.text = String("\(syntheticCredit)"+"/2")
            if(Double(syntheticCredit) >= 2.0){
                label4.textColor = UIColor.red
            }
        }
        else{
            label4.text = "0 /2"
        }
        label4.font = label4.font.withSize(30)
        label4.sizeToFit()
        label4.center = CGPoint(x: 300, y: 232) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label4)
        
        //キャリア
        let label5 = UILabel()
        if let careerCredit = lectureCounter["キャリア"]{
            label5.text = String("\(careerCredit)"+"/2")
            if(Double(careerCredit) >= 2.0){
                label5.textColor = UIColor.red
            }
        }
        else{
            label5.text = "0 /2"
        }
        label5.font = label5.font.withSize(30)
        label5.sizeToFit()
        label5.center = CGPoint(x: 300, y: 292) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label5)
        
        //琉大特色
        let label6 = UILabel()
        if let ryukyuCredit = lectureCounter["琉球"]{
            label6.text = String("\(ryukyuCredit)"+"/2")
            if(Double(ryukyuCredit) >= 2.0){
                label6.textColor = UIColor.red
            }
        }
        else{
            label6.text = "0 /2"
        }
        label6.font = label6.font.withSize(30)
        label6.sizeToFit()
        label6.center = CGPoint(x: 300, y: 352) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label6)

        //情報関連
        let label7 = UILabel()
        if let relatedinfoCredit = lectureCounter["情報関連"]{
            label7.text = String("\(relatedinfoCredit)"+"/2")
            if(Double(relatedinfoCredit) >= 2.0){
                label7.textColor = UIColor.red
            }
        }
        else{
            label7.text = "0 /2"
        }
        label7.font = label7.font.withSize(30)
        label7.sizeToFit()
        label7.center = CGPoint(x: 300, y: 412) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label7)
        
        //外国語
        let label8 = UILabel()
        if let otherlangCredit = lectureCounter["外国語"]{
            label8.text = String("\(otherlangCredit)"+"/12")
            if(Double(otherlangCredit) >= 12.0){
                label8.textColor = UIColor.red
            }
        }
        else{
            label8.text = "0 /24"
        }
        label8.font = label8.font.withSize(30)
        label8.sizeToFit()
        label8.center = CGPoint(x: 300, y: 472) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label8)
        // Do any additional setup after loading the view.
        
        //健康運動
        let label9 = UILabel()
        if let sportCredit = lectureCounter["スポーツ"]{
            label9.text = String("\(sportCredit)"+"/2")
            if(Double(sportCredit) >= 2.0){
                label9.textColor = UIColor.red
            }
        }
        else{
            label9.text = "0 /2"
        }
        label9.font = label9.font.withSize(30)
        label9.sizeToFit()
        label9.center = CGPoint(x: 300, y: 532) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label9)
    }
    
}

class ViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //先修
        let label = UILabel()
        if let preparateCredit = lectureCounter["先修"]{
            
            label.text = String("\(preparateCredit)"+"/8")
            if(Double(preparateCredit) >= 8.0){
                label.textColor = UIColor.red
            }
            print(preparateNum)
        }
        else{
            print("no")
            
            label.text = "0 /8"
            print(preparateNum)
        }
        label.font = label.font.withSize(30)
        label.sizeToFit()
        label.center = CGPoint(x: 300, y: 54)
        self.view.addSubview(label)
        
        //情報技術系
        let label2 = UILabel()
        if let relatedInfoCredit = lectureCounter["情報技術系"]{
            
            label2.text = String("\(relatedInfoCredit)"+"/2")
            if(Double(relatedInfoCredit) >= 2.0){
                label2.textColor = UIColor.red
            }
            print(infoTechNum)
        }
        else{
            print("no")
            
            label2.text = "0 /2"
            print(infoTechNum)
        }
        label2.font = label2.font.withSize(30)
        label2.sizeToFit()
        label2.center = CGPoint(x: 300, y: 114)
        self.view.addSubview(label2)
        
        //総合力演習
        let label3 = UILabel()
        if let generalExCredit = lectureCounter["総合力演習"]{
            
            label3.text = String("\(generalExCredit)"+"/7")
            if(Double(generalExCredit) >= 7.0){
                label3.textColor = UIColor.red
            }
            print(generalExNum)
        }
        else{
            print("no")
            
            label3.text = "0 /7"
            print(humanitiesNum)
        }
        label3.font = label3.font.withSize(30);        label3.sizeToFit()
        label3.center = CGPoint(x: 300, y: 174)
        self.view.addSubview(label3)
        
        //研究実験
        let label4 = UILabel()
        if let ResearchExCredit = lectureCounter["研究実験"]{
            label4.text = String("\(ResearchExCredit)"+"/15")
            if(Double(ResearchExCredit) >= 15.0){
                label4.textColor = UIColor.red
            }
            print(ResearchExNum)
        }
        else{
            print("no")
            
            label4.text = "0 /15"
            print(ResearchExNum)
        }
        label4.font = label4.font.withSize(30)
        label4.sizeToFit()
        label4.center = CGPoint(x: 300, y: 234)
        self.view.addSubview(label4)
        
        //必修基礎数学
        let label5 = UILabel()
        if let reqBasicMathCredit = lectureCounter["必修数学基礎"]{
            label5.text = String("\(reqBasicMathCredit)"+"/6")
            if(Double(reqBasicMathCredit) >= 6.0){
                label5.textColor = UIColor.red
            }
            print(reqBasicMathNum)
        }
        else{
            print("no")
            
            label5.text = "0 /6"
            print(reqBasicMathNum)
        }
        label5.font = label5.font.withSize(30)
        label5.sizeToFit()
        label5.center = CGPoint(x: 300, y: 294)
        self.view.addSubview(label5)
        
        //知能情報コア
        let label6 = UILabel()
        if let intelInfoCoreCredit = lectureCounter["知能情報コア"]{
            
            label6.text = String("\(intelInfoCoreCredit)"+"/26")
            if(Double(intelInfoCoreCredit) >= 26.0){
                label6.textColor = UIColor.red
            }
            print(intelInfoCoreNum)
        }
        else{
            print("no")
            
            label6.text = "0 /26"
            print(intelInfoCoreNum)
        }
        label6.font = label6.font.withSize(30)
        label6.sizeToFit()
        label6.center = CGPoint(x: 300, y: 354)
        self.view.addSubview(label6)
        
        //工学融合
        let label7 = UILabel()
        if let optEngineerCredit = lectureCounter["工学融合"]{
            
            label7.text = String("\(optEngineerCredit)"+"/4")
            if(Double(optEngineerCredit) >= 4.0){
                label7.textColor = UIColor.red
            }
            print(optEngineerNum)
        }
        else{
            print("no")
            
            label7.text = "0 /4"
            print(optEngineerNum)
        }
        label7.font = label7.font.withSize(30)
        label7.sizeToFit()
        label7.center = CGPoint(x: 300, y: 414)
        self.view.addSubview(label7)
        
        //選択数学基礎
        /*
        let label8 = UILabel()
        if let lecture_num = lectureCounter["先修"]{
            
            label8.text = String("\(lecture_num)"+"/8")
            print(senmonANum)
        }
        else{
            print("no")
            
            label8.text = "0 /8"
            print(senmonANum)
        }
        label8.font = label8.font.withSize(30)
        label8.sizeToFit()
        label8.center = CGPoint(x: 300, y: 474) 
        self.view.addSubview(label8)
        */
        //知能情報アドバンスト
        let label9 = UILabel()
        if let senmonACredit = lectureCounter["専門A(選数,知アド,知情関連)"]{
            
            label9.text = String("\(senmonACredit)"+"/22")
            if(Double(senmonACredit) >= 22.0){
                label9.textColor = UIColor.red
            }
            print(senmonANum)
        }
        else{
            print("no")
            
            label9.text = "0 /22"
            print(senmonANum)
        }
        label9.font = label9.font.withSize(30)
        label9.sizeToFit()
        label9.center = CGPoint(x: 300, y: 474);          self.view.addSubview(label9)
        
        //知能情報関連
        /*
        let label10 = UILabel()
        if let lecture_num = lectureCounter["情報技術系"]{
            
            label10.text = String("\(lecture_num)"+"/8")
            print(senmonANum)
        }
        else{
            print("no")
            
            label10.text = "0 /8"
            print(senmonANum)
        }
        label10.font = label10.font.withSize(30)
        label10.sizeToFit()
        label10.center = CGPoint(x: 300, y: 594)
        self.view.addSubview(label10)
*/
    }
}
