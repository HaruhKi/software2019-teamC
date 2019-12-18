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
        //人文
        let label = UILabel()
        if let lecture_num = lectureCounter["人文"]{
            
            label.text = String("\(lecture_num)"+"/2")
            print(humanitiesNum)
        }
        else{
            print("no")
            
            label.text = "0 /2"
            print(humanitiesNum)
        }
        label.font = label.font.withSize(30)//sizeTOFitの前にいれないと文字が切れる
        label.sizeToFit()
        label.center = CGPoint(x: 250, y: 90) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label)
    
        
        //社会
        let label2 = UILabel()
        if let lectureNum = lectureCounter["社会"]{
            label2.text = String("\(lectureNum)"+"/2")
        }
        else{
            label2.text = "0 /2"
        }
        label2.font = label2.font.withSize(30)
        label2.sizeToFit()
        label2.center = CGPoint(x: 250, y: 150) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label2)
        
        //自然
        let label3 = UILabel()
        if let natureCredit = lectureCounter["自然"]{
            label3.text = String("\(natureCredit)"+"/0")
        }
        else{
            label3.text = "0 /0"
        }
        label3.font = label3.font.withSize(30)
        label3.sizeToFit()
        label3.center = CGPoint(x: 250, y: 210) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label3)
        
        //総合
        let label4 = UILabel()
        if let syntheticCredit = lectureCounter["総合"]{
            label4.text = String("\(syntheticCredit)"+"/2")
        }
        else{
            label4.text = "0 /2"
        }
        label4.font = label4.font.withSize(30)
        label4.sizeToFit()
        label4.center = CGPoint(x: 250, y: 270) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label4)
        
        //キャリア
        let label5 = UILabel()
        if let careerCredit = lectureCounter["キャリア"]{
            label5.text = String("\(careerCredit)"+"/2")
        }
        else{
            label5.text = "0 /2"
        }
        label5.font = label5.font.withSize(30)
        label5.sizeToFit()
        label5.center = CGPoint(x: 250, y: 330) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label5)
        
        //琉大特色
        let label6 = UILabel()
        if let ryukyuCredit = lectureCounter["琉大特色"]{
            label6.text = String("\(ryukyuCredit)"+"/2")
        }
        else{
            label6.text = "0 /2"
        }
        label6.font = label6.font.withSize(30)
        label6.sizeToFit()
        label6.center = CGPoint(x: 250, y: 390) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label6)

        //情報関連
        let label7 = UILabel()
        if let relatedinfoCredit = lectureCounter["情報関連"]{
            label7.text = String("\(relatedinfoCredit)"+"/2")
        }
        else{
            label7.text = "0 /2"
        }
        label7.font = label7.font.withSize(30)
        label7.sizeToFit()
        label7.center = CGPoint(x: 250, y: 450) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label7)
        
        //外国語
        let label8 = UILabel()
        if let otherlangCredit = lectureCounter["外国語"]{
            label8.text = String("\(otherlangCredit)"+"/24")
        }
        else{
            label8.text = "0 /24"
        }
        label8.font = label8.font.withSize(30)
        label8.sizeToFit()
        label8.center = CGPoint(x: 250, y: 510) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label8)
        // Do any additional setup after loading the view.
        
        //健康運動
        let label9 = UILabel()
        if let sportCredit = lectureCounter["スポーツ"]{
            label9.text = String("\(sportCredit)"+"/2")
        }
        else{
            label9.text = "0 /2"
        }
        label9.font = label9.font.withSize(30)
        label9.sizeToFit()
        label9.center = CGPoint(x: 250, y: 570) // UILabelの中央座標を (200, 100) とする
        self.view.addSubview(label9)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

class ViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
