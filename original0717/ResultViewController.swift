
//
//  resultViewController.swift
//  original0717
//
//  Created by Daichi Asami on 2019/02/06.
//  Copyright © 2019年 litech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label8: UILabel!
    @IBOutlet var label9: UILabel!
    @IBOutlet var label10: UILabel!
    @IBOutlet var label11: UILabel!
    @IBOutlet var label12: UILabel!
    @IBOutlet var label13: UILabel!
    @IBOutlet var label14: UILabel!
    @IBOutlet var label15: UILabel!
    @IBOutlet var label16: UILabel!
    @IBOutlet var label17: UILabel!
    @IBOutlet var label18: UILabel!
    @IBOutlet var label19: UILabel!
    @IBOutlet var label20: UILabel!
    @IBOutlet var label21: UILabel!
    @IBOutlet var label22: UILabel!
    @IBOutlet var label23: UILabel!
    @IBOutlet var label24: UILabel!
    @IBOutlet var label25: UILabel!
    @IBOutlet var label26: UILabel!
    @IBOutlet var label27: UILabel!
    @IBOutlet var label28: UILabel!
    @IBOutlet var label29: UILabel!
    @IBOutlet var label30: UILabel!
    @IBOutlet var label31: UILabel!
    @IBOutlet var label32: UILabel!
    @IBOutlet var label33: UILabel!
    @IBOutlet var label34: UILabel!
    @IBOutlet var label35: UILabel!
    @IBOutlet var label36: UILabel!
    @IBOutlet var label37: UILabel!
    @IBOutlet var label38: UILabel!
    @IBOutlet var label39: UILabel!
    @IBOutlet var label40: UILabel!
    @IBOutlet var label41: UILabel!
    @IBOutlet var label42: UILabel!
    @IBOutlet var label43: UILabel!
    @IBOutlet var label44: UILabel!
    @IBOutlet var label45: UILabel!
    
    
    var number4: Int!
    var number5: Int!
    var number6: Int!
    var number7: Int!
    var number8: Int!
    var number9: Int!
    var number10: Int!
    var number11: Int!
    var number12: Int!
    var number13: Int!
    var number14: Int!
    var number15: Int!
    var number16: Int!
    var number17: Int!
    var number18: Int!
    var number19: Int!
    var number20: Int!
    var number21: Int!
    var number22: Int!
    var number23: Int!
    var number24: Int!
    var number25: Int!
    var number26: Int!
    var number27: Int!
    var number28: Int!
    var number29: Int!
    var number30: Int!
    var number31: Int!
    var number32: Int!
    var number33: Int!
    var number34: Int!
    var number35: Int!
    var number36: Int!
    var number37: Int!
    var number38: Int!
    var number39: Int!
    var number40: Int!
    var number41: Int!
    var number42: Int!
    var number43: Int!
    var number44: Int!
    var number45: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label4.text = String(number4)
        label5.text = String(number5)
        label6.text = String(number6)
        label7.text = String(number7)
        label8.text = String(number8)
        label9.text = String(number9)
        label10.text = String(number10)
        label11.text = String(number11)
        label12.text = String(number12)
        label13.text = String(number13)
        label14.text = String(number14)
        label15.text = String(number15)
        number16 = number4 + number10 + number28 + number34
        label16.text = String(number16)
        number17 = number5 + number11 + number29 + number35
        label17.text = String(number17)
        number18 = number6 + number12 + number30 + number36
        label18.text = String(number18)
        number19 = number7 + number13 + number31 + number37
        label19.text = String(number19)
        number20 = number8 + number14 + number32 + number38
        label20.text = String(number20)
        number21 = number9 + number15 + number33 + number39
        label21.text = String(number21)
        
        label28.text = String(number28)
        label29.text = String(number29)
        label30.text = String(number30)
        label31.text = String(number31)
        label32.text = String(number32)
        label33.text = String(number33)
        label34.text = String(number34)
        label35.text = String(number35)
        label36.text = String(number36)
        label37.text = String(number37)
        label38.text = String(number38)
        label39.text = String(number39)
        
        number40 = number4 * 2 + number28 * 3
        number41 = number5 * 2 + number29 * 3
        number42 = number6 * 2 + number30 * 3
        number43 = number7 * 2 + number31 * 3
        number44 = number8 * 2 + number32 * 3
        number45 = number9 * 2 + number33 * 3
        
        label40.text = String(number40)
        label41.text = String(number41)
        label42.text = String(number42)
        label43.text = String(number43)
        label44.text = String(number44)
        label45.text = String(number45)
        
        
        
        
        
        
        if number4 != 0 && number4 != nil {
            number22 = (number4 + number28) * 100 / number16
            label22.text = String(number22)
        } else {
            label22.text = "0"
        }
        
        if number5 != 0 && number5 != nil {
            number23 = (number5 + number29) * 100 / number17
            label23.text = String(number23)
        } else {
            label23.text = "0"
        }
        
        if number6 != 0 && number6 != nil {
            number24 = (number6 + number30) * 100 / number18
            label24.text = String(number24)
        } else {
            label24.text = "0"
        }
        if number7 != 0 && number7 != nil {
            number25 = (number7 + number31) * 100 / number19
            label25.text = String(number25)
        } else {
            label25.text = "0"
        }
        if number8 != 0 && number8 != nil {
            number26 = (number8 + number32) * 100 / number20
            label26.text = String(number26)
        } else {
            label26.text = "0"
        }
        if number9 != 0 && number9 != nil {
            number27 = (number9 + number33) * 100 / number21
            label27.text = String(number27)
        } else {
            label27.text = "0"
        }
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func back(){
        dismiss(animated: true, completion: nil)
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
