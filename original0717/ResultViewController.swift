
//
//  resultViewController.swift
//  original0717
//
//  Created by Daichi Asami on 2019/02/06.
//  Copyright © 2019年 litech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var label2pok4: UILabel!
    @IBOutlet var label2pok5: UILabel!
    @IBOutlet var label2pok6: UILabel!
    @IBOutlet var label2pok7: UILabel!
    @IBOutlet var label2pok8: UILabel!
    @IBOutlet var label2pok9: UILabel!
    @IBOutlet var label2pno4: UILabel!
    @IBOutlet var label2pno5: UILabel!
    @IBOutlet var label2pno6: UILabel!
    @IBOutlet var label2pno7: UILabel!
    @IBOutlet var label2pno8: UILabel!
    @IBOutlet var label2pno9: UILabel!
    @IBOutlet var labeltotal4: UILabel!
    @IBOutlet var labeltotal5: UILabel!
    @IBOutlet var labeltotal6: UILabel!
    @IBOutlet var labeltotal7: UILabel!
    @IBOutlet var labeltotal8: UILabel!
    @IBOutlet var labeltotal9: UILabel!
    @IBOutlet var labelkakuritu4: UILabel!
    @IBOutlet var labelkakuritu5: UILabel!
    @IBOutlet var labelkakuritu6: UILabel!
    @IBOutlet var labelkakuritu7: UILabel!
    @IBOutlet var labelkakuritu8: UILabel!
    @IBOutlet var labelkakuritu9: UILabel!
    @IBOutlet var label3pok4: UILabel!
    @IBOutlet var label3pok5: UILabel!
    @IBOutlet var label3pok6: UILabel!
    @IBOutlet var label3pok7: UILabel!
    @IBOutlet var label3pok8: UILabel!
    @IBOutlet var label3pok9: UILabel!
    @IBOutlet var label3pno4: UILabel!
    @IBOutlet var label3pno5: UILabel!
    @IBOutlet var label3pno6: UILabel!
    @IBOutlet var label3pno7: UILabel!
    @IBOutlet var label3pno8: UILabel!
    @IBOutlet var label3pno9: UILabel!
    @IBOutlet var labeltotalpoint4: UILabel!
    @IBOutlet var labeltotalpoint5: UILabel!
    @IBOutlet var labeltotalpoint6: UILabel!
    @IBOutlet var labeltotalpoint7: UILabel!
    @IBOutlet var labeltotalpoint8: UILabel!
    @IBOutlet var labeltotalpoint9: UILabel!
    @IBOutlet var backbutton: UIButton!
    
    
    var number2pok4: Int!
    var number2pok5: Int!
    var number2pok6: Int!
    var number2pok7: Int!
    var number2pok8: Int!
    var number2pok9: Int!
    var number2pno4: Int!
    var number2pno5: Int!
    var number2pno6: Int!
    var number2pno7: Int!
    var number2pno8: Int!
    var number2pno9: Int!
    var numbertotal4: Int!
    var numbertotal5: Int!
    var numbertotal6: Int!
    var numbertotal7: Int!
    var numbertotal8: Int!
    var numbertotal9: Int!
    var numberkakuritu4: Int!
    var numberkakuritu5: Int!
    var numberkakuritu6: Int!
    var numberkakuritu7: Int!
    var numberkakuritu8: Int!
    var numberkakuritu9: Int!
    var number3pok4: Int!
    var number3pok5: Int!
    var number3pok6: Int!
    var number3pok7: Int!
    var number3pok8: Int!
    var number3pok9: Int!
    var number3pno4: Int!
    var number3pno5: Int!
    var number3pno6: Int!
    var number3pno7: Int!
    var number3pno8: Int!
    var number3pno9: Int!
    var numberscore4: Int!
    var numberscore5: Int!
    var numberscore6: Int!
    var numberscore7: Int!
    var numberscore8: Int!
    var numberscore9: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backbutton.layer.shadowOpacity = 0.5
        self.backbutton.layer.shadowRadius = 12
        self.backbutton.layer.shadowColor = UIColor.black.cgColor
        self.backbutton.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        
        
        label2pok4.text = String(number2pok4)
        label2pok5.text = String(number2pok5)
        label2pok6.text = String(number2pok6)
        label2pok7.text = String(number2pok7)
        label2pok8.text = String(number2pok8)
        label2pok9.text = String(number2pok9)
        label2pno4.text = String(number2pno4)
        label2pno5.text = String(number2pno5)
        label2pno6.text = String(number2pno6)
        label2pno7.text = String(number2pno7)
        label2pno8.text = String(number2pno8)
        label2pno9.text = String(number2pno9)
        numbertotal4 = number2pok4 + number2pno4 + number3pok4 + number3pno4
        labeltotal4.text = String(numbertotal4)
        numbertotal5 = number2pok5 + number2pno5 + number3pok5 + number3pno5
        labeltotal5.text = String(numbertotal5)
        numbertotal6 = number2pok6 + number2pno6 + number3pok6 + number3pno6
        labeltotal6.text = String(numbertotal6)
        numbertotal7 = number2pok7 + number2pno7 + number3pok7 + number3pno7
        labeltotal7.text = String(numbertotal7)
        numbertotal8 = number2pok8 + number2pno8 + number3pok8 + number3pno8
        labeltotal8.text = String(numbertotal8)
        numbertotal9 = number2pok9 + number2pno9 + number3pok9 + number3pno9
        labeltotal9.text = String(numbertotal9)
        
        label3pok4.text = String(number3pok4)
        label3pok5.text = String(number3pok5)
        label3pok6.text = String(number3pok6)
        label3pok7.text = String(number3pok7)
        label3pok8.text = String(number3pok8)
        label3pok9.text = String(number3pok9)
        label3pno4.text = String(number3pno4)
        label3pno5.text = String(number3pno5)
        label3pno6.text = String(number3pno6)
        label3pno7.text = String(number3pno7)
        label3pno8.text = String(number3pno8)
        label3pno9.text = String(number3pno9)
        
        numberscore4 = number2pok4 * 2 + number3pok4 * 3
        numberscore5 = number2pok5 * 2 + number3pok5 * 3
        numberscore6 = number2pok6 * 2 + number3pok6 * 3
        numberscore7 = number2pok7 * 2 + number3pok7 * 3
        numberscore8 = number2pok8 * 2 + number3pok8 * 3
        numberscore9 = number2pok9 * 2 + number3pok9 * 3
        
        labeltotalpoint4.text = String(numberscore4)
        labeltotalpoint5.text = String(numberscore5)
        labeltotalpoint6.text = String(numberscore6)
        labeltotalpoint7.text = String(numberscore7)
        labeltotalpoint8.text = String(numberscore8)
        labeltotalpoint9.text = String(numberscore9)
        
        
        
        
        
        
        if number2pok4 != 0 && number2pok4 != nil {
            numberkakuritu4 = (number2pok4 + number3pok4) * 100 / numbertotal4
            labelkakuritu4.text = String(numberkakuritu4)
        } else {
            labelkakuritu4.text = "0"
        }
        
        if number2pok5 != 0 && number2pok5 != nil {
            numberkakuritu5 = (number2pok5 + number3pok5) * 100 / numbertotal5
            labelkakuritu5.text = String(numberkakuritu5)
        } else {
            labelkakuritu5.text = "0"
        }
        
        if number2pok6 != 0 && number2pok6 != nil {
            numberkakuritu6 = (number2pok6 + number3pok6) * 100 / numbertotal6
            labelkakuritu6.text = String(numberkakuritu6)
        } else {
            labelkakuritu6.text = "0"
        }
        if number2pok7 != 0 && number2pok7 != nil {
            numberkakuritu7 = (number2pok7 + number3pok7) * 100 / numbertotal7
            labelkakuritu7.text = String(numberkakuritu7)
        } else {
            labelkakuritu7.text = "0"
        }
        if number2pok8 != 0 && number2pok8 != nil {
            numberkakuritu8 = (number2pok8 + number3pok8) * 100 / numbertotal8
            labelkakuritu8.text = String(numberkakuritu8)
        } else {
            labelkakuritu8.text = "0"
        }
        if number2pok9 != 0 && number2pok9 != nil {
            numberkakuritu9 = (number2pok9 + number3pok9) * 100 / numbertotal9
            labelkakuritu9.text = String(numberkakuritu9)
        } else {
            labelkakuritu9.text = "0"
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
