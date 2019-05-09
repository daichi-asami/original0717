//
//  ViewController.swift
//  original0717
//
//  Created by Daichi Asami on 2019/01/23.
//  Copyright © 2019年 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet var touchAreaView: UIView!
    @IBOutlet var haikeiImageView: UIImageView!
    @IBOutlet var labelkari: UILabel!
    @IBOutlet var labelkari2: UILabel!
    
    @IBOutlet var redFourButton: UIButton!
    @IBOutlet var redFiveButton: UIButton!
    @IBOutlet var redSixButton: UIButton!
    @IBOutlet var redSevenButton: UIButton!
    @IBOutlet var redEightButton: UIButton!
    @IBOutlet var redNineButton: UIButton!
    @IBOutlet var blackFourButton: UIButton!
    @IBOutlet var blackFiveButton: UIButton!
    @IBOutlet var blackSixButton: UIButton!
    @IBOutlet var blackSevenButton: UIButton!
    @IBOutlet var blackEightButton: UIButton!
    @IBOutlet var blackNineButton: UIButton!
    
    
    var number4: Int = 0
    var number5: Int = 0
    var number6: Int = 0
    var number7: Int = 0
    var number8: Int = 0
    var number9: Int = 0
    var number10: Int = 0
    var number11: Int = 0
    var number12: Int = 0
    var number13: Int = 0
    var number14: Int = 0
    var number15: Int = 0
    var number16: Int = 0
    var number28: Int = 0
    var number29: Int = 0
    var number30: Int = 0
    var number31: Int = 0
    var number32: Int = 0
    var number33: Int = 0
    var number34: Int = 0
    var number35: Int = 0
    var number36: Int = 0
    var number37: Int = 0
    var number38: Int = 0
    var number39: Int = 0
    
    
    
    var imageNameArray: [String] = ["4","5","6","7","8","9","4-1","5-1","6-1","7-1","8-1","9-1"]
    
    var imageIndex: Int = 0
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond" {
            let resultViewContoroller = segue.destination as! ResultViewController
            resultViewContoroller.number4 = number4
            resultViewContoroller.number5 = number5
            resultViewContoroller.number6 = number6
            resultViewContoroller.number7 = number7
            resultViewContoroller.number8 = number8
            resultViewContoroller.number9 = number9
            resultViewContoroller.number10 = number10
            resultViewContoroller.number11 = number11
            resultViewContoroller.number12 = number12
            resultViewContoroller.number13 = number13
            resultViewContoroller.number14 = number14
            resultViewContoroller.number15 = number15
            resultViewContoroller.number28 = number28
            resultViewContoroller.number29 = number29
            resultViewContoroller.number30 = number30
            resultViewContoroller.number31 = number31
            resultViewContoroller.number32 = number32
            resultViewContoroller.number33 = number33
            resultViewContoroller.number34 = number34
            resultViewContoroller.number35 = number35
            resultViewContoroller.number36 = number36
            resultViewContoroller.number37 = number37
            resultViewContoroller.number38 = number38
            resultViewContoroller.number39 = number39
            
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch = touches.first!
        
        let location: CGPoint = touch.location(in: self.view)
        
        guard location.y < touchAreaView.frame.height else { return }
        
        if imageIndex != 0 {
            
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 9, height: 12))
            
            let image: UIImage = UIImage(named: imageNameArray[imageIndex - 1])!
            
            imageView.image = image
            imageView.center = CGPoint(x: location.x, y: location.y)
            
            self.view.addSubview(imageView)
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as? UIImage
        
        haikeiImageView.image = image
        
        self.dismiss(animated: true, completion: nil)
        
    }

    @IBAction func toSecond(_ sender: UIButton) {
//        画面遷移させたいボタンの中に書く
        self.performSegue(withIdentifier: "toSecond", sender: labelkari.text) // sender で指定したものを渡せる
    }
    
    
    @IBAction func threepoint(){
        number16 = 1
    }
    @IBAction func twopoint(){
        number16 = 0
    }
    
    @IBAction func selectedFirst(){
        if number16 == 1 {
            number28 = number28 + 1
        }else{
            number4 = number4 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 1
        labelkari.text = String(number4)
        self.redFourButton.backgroundColor = UIColor.green
    }
   
    
    @IBAction func selectedSecond(){
        if number16 == 1 {
            number29 = number29 + 1
        }else{
            number5 = number5 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 2
        labelkari.text = String(number4)
        self.redFiveButton.backgroundColor = UIColor.green
    }
    @IBAction func selectedThird(){
        if number16 == 1 {
            number30 = number30 + 1
        }else{
            number6 = number6 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 3
        labelkari.text = String(number4)
        self.redSixButton.backgroundColor = UIColor.green
    }
    @IBAction func selectedFourth(){
        if number16 == 1 {
            number31 = number31 + 1
        }else{
            number7 = number7 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 4
        labelkari.text = String(number4)
        self.redSevenButton.backgroundColor = UIColor.green
    }
    @IBAction func selected5(){
        if number16 == 1 {
            number32 = number32 + 1
        }else{
            number8 = number8 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 5
        labelkari.text = String(number4)
        self.redEightButton.backgroundColor = UIColor.green
    }
    @IBAction func selected6(){
        if number16 == 1 {
            number33 = number33 + 1
        }else{
            number9 = number9 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 6
        labelkari.text = String(number4)
        self.redNineButton.backgroundColor = UIColor.green
    }
    @IBAction func selected7(){
        if number16 == 1 {
            number34 = number34 + 1
        }else{
            number10 = number10 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 7
        labelkari2.text = String(number5)
        self.blackFourButton.backgroundColor = UIColor.green
    }
    @IBAction func selected8(){
        if number16 == 1 {
            number35 = number35 + 1
        }else{
            number11 = number11 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 8
        labelkari2.text = String(number5)
        self.blackFiveButton.backgroundColor = UIColor.green
    }
    @IBAction func selected9(){
        if number16 == 1 {
            number36 = number36 + 1
        }else{
            number12 = number12 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 9
        labelkari2.text = String(number5)
        self.blackSixButton.backgroundColor = UIColor.green
    }
    @IBAction func selected10(){
        if number16 == 1 {
            number37 = number37 + 1
        }else{
            number13 = number13 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 10
        labelkari2.text = String(number5)
        self.blackSevenButton.backgroundColor = UIColor.green
    }
    @IBAction func selected11(){
        if number16 == 1 {
            number38 = number38 + 1
        }else{
            number14 = number14 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 11
        labelkari2.text = String(number5)
        self.blackEightButton.backgroundColor = UIColor.green
    }
    @IBAction func selected12(){
        if number16 == 1 {
            number39 = number39 + 1
        }else{
            number15 = number15 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 12
        labelkari2.text = String(number5)
        self.blackNineButton.backgroundColor = UIColor.green
    }
    func imageRemove(){
        // self.viewの上に乗っているオブジェクトを順番に取得する
        for v in view.subviews {
            if let v = v as? UIImageView ,v.tag == 0{
            v.removeFromSuperview()
            }
        }
    
    }
    
    
    
    @IBAction func back(){
        self.imageView.removeFromSuperview()
    }
    
    @IBAction func clear(){
        imageRemove()
        clearAllBackgroundColor()
        number4 = 0
        number5 = 0
        number6 = 0
        number7 = 0
        number8 = 0
        number9 = 0
        number10 = 0
        number11 = 0
        number12 = 0
        number13 = 0
        number14 = 0
        number15 = 0
        number28 = 0
        number29 = 0
        number30 = 0
        number31 = 0
        number32 = 0
        number33 = 0
        number34 = 0
        number35 = 0
        number36 = 0
        number37 = 0
        number38 = 0
        number39 = 0
        labelkari.text = String(number4)
        labelkari2.text = String(number5)
        
    }
//    @IBAction func selectBackground(){
//        let imagePickerController: UIImagePickerController = UIImagePickerController()
//
//        imagePickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
//        imagePickerController.delegate = self
//        imagePickerController.allowsEditing = true
//
//        self.present(imagePickerController, animated: true, completion: nil)
//
//    }
    
    @IBAction func save(){
        let rect:CGRect = CGRect(x:0, y:30, width:375, height:348)
        UIGraphicsBeginImageContext(rect.size)
        self.view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let capture = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        UIImageWriteToSavedPhotosAlbum(capture!, nil, nil, nil)
    }
    
    func clearAllBackgroundColor() {
        self.redFourButton.backgroundColor = UIColor.clear
        self.redFiveButton.backgroundColor = UIColor.clear
        self.redSixButton.backgroundColor = UIColor.clear
        self.redSevenButton.backgroundColor = UIColor.clear
        self.redEightButton.backgroundColor = UIColor.clear
        self.redNineButton.backgroundColor = UIColor.clear
        self.blackFourButton.backgroundColor = UIColor.clear
        self.blackFiveButton.backgroundColor = UIColor.clear
        self.blackSixButton.backgroundColor = UIColor.clear
        self.blackSevenButton.backgroundColor = UIColor.clear
        self.blackEightButton.backgroundColor = UIColor.clear
        self.blackNineButton.backgroundColor = UIColor.clear
    }
}


