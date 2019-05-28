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
    @IBOutlet var twopointButton: UIButton!
    @IBOutlet var threepointButton: UIButton!
    
    
    var number2pok4: Int = 0
    var number2pok5: Int = 0
    var number2pok6: Int = 0
    var number2pok7: Int = 0
    var number2pok8: Int = 0
    var number2pok9: Int = 0
    var number2pno4: Int = 0
    var number2pno5: Int = 0
    var number2pno6: Int = 0
    var number2pno7: Int = 0
    var number2pno8: Int = 0
    var number2pno9: Int = 0
    var number2p3pjudge: Int = 0
    var number3pok4: Int = 0
    var number3pok5: Int = 0
    var number3pok6: Int = 0
    var number3pok7: Int = 0
    var number3pok8: Int = 0
    var number3pok9: Int = 0
    var number3pno4: Int = 0
    var number3pno5: Int = 0
    var number3pno6: Int = 0
    var number3pno7: Int = 0
    var number3pno8: Int = 0
    var number3pno9: Int = 0
    
    
    
    var imageNameArray: [String] = ["4","5","6","7","8","9","4-1","5-1","6-1","7-1","8-1","9-1"]
    
    var imageIndex: Int = 0
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond" {
            let resultViewContoroller = segue.destination as! ResultViewController
            resultViewContoroller.number2pok4 = number2pok4
            resultViewContoroller.number2pok5 = number2pok5
            resultViewContoroller.number2pok6 = number2pok6
            resultViewContoroller.number2pok7 = number2pok7
            resultViewContoroller.number2pok8 = number2pok8
            resultViewContoroller.number2pok9 = number2pok9
            resultViewContoroller.number2pno4 = number2pno4
            resultViewContoroller.number2pno5 = number2pno5
            resultViewContoroller.number2pno6 = number2pno6
            resultViewContoroller.number2pno7 = number2pno7
            resultViewContoroller.number2pno8 = number2pno8
            resultViewContoroller.number2pno9 = number2pno9
            resultViewContoroller.number3pok4 = number3pok4
            resultViewContoroller.number3pok5 = number3pok5
            resultViewContoroller.number3pok6 = number3pok6
            resultViewContoroller.number3pok7 = number3pok7
            resultViewContoroller.number3pok8 = number3pok8
            resultViewContoroller.number3pok9 = number3pok9
            resultViewContoroller.number3pno4 = number3pno4
            resultViewContoroller.number3pno5 = number3pno5
            resultViewContoroller.number3pno6 = number3pno6
            resultViewContoroller.number3pno7 = number3pno7
            resultViewContoroller.number3pno8 = number3pno8
            resultViewContoroller.number3pno9 = number3pno9
            
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
//        self.performSegue(withIdentifier: "toSecond", sender: nil) // sender で指定したものを渡せる
    }
    
    
    @IBAction func threepoint(){
        number2p3pjudge = 1
        clearAllBackgroundColor()
        self.threepointButton.backgroundColor = UIColor.green
    }
    @IBAction func twopoint(){
        number2p3pjudge = 0
        clearAllBackgroundColor()
        self.twopointButton.backgroundColor = UIColor.green
    }
    
    @IBAction func selectedFirst(){
        if number2p3pjudge == 1 {
            number3pok4 = number3pok4 + 1
        }else{
            number2pok4 = number2pok4 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 1
        labelkari.text = String(number2pok4)
        self.redFourButton.backgroundColor = UIColor.green
    }
   
    
    @IBAction func selectedSecond(){
        if number2p3pjudge == 1 {
            number3pok5 = number3pok5 + 1
        }else{
            number2pok5 = number2pok5 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 2
        labelkari.text = String(number2pok4)
        self.redFiveButton.backgroundColor = UIColor.green
    }
    @IBAction func selectedThird(){
        if number2p3pjudge == 1 {
            number3pok6 = number3pok6 + 1
        }else{
            number2pok6 = number2pok6 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 3
        labelkari.text = String(number2pok4)
        self.redSixButton.backgroundColor = UIColor.green
    }
    @IBAction func selectedFourth(){
        if number2p3pjudge == 1 {
            number3pok7 = number3pok7 + 1
        }else{
            number2pok7 = number2pok7 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 4
        labelkari.text = String(number2pok4)
        self.redSevenButton.backgroundColor = UIColor.green
    }
    @IBAction func selected5(){
        if number2p3pjudge == 1 {
            number3pok8 = number3pok8 + 1
        }else{
            number2pok8 = number2pok8 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 5
        labelkari.text = String(number2pok4)
        self.redEightButton.backgroundColor = UIColor.green
    }
    @IBAction func selected6(){
        if number2p3pjudge == 1 {
            number3pok9 = number3pok9 + 1
        }else{
            number2pok9 = number2pok9 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 6
        labelkari.text = String(number2pok4)
        self.redNineButton.backgroundColor = UIColor.green
    }
    @IBAction func selected7(){
        if number2p3pjudge == 1 {
            number3pno4 = number3pno4 + 1
        }else{
            number2pno4 = number2pno4 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 7
        labelkari2.text = String(number2pok5)
        self.blackFourButton.backgroundColor = UIColor.green
    }
    @IBAction func selected8(){
        if number2p3pjudge == 1 {
            number3pno5 = number3pno5 + 1
        }else{
            number2pno5 = number2pno5 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 8
        labelkari2.text = String(number2pok5)
        self.blackFiveButton.backgroundColor = UIColor.green
    }
    @IBAction func selected9(){
        if number2p3pjudge == 1 {
            number3pno6 = number3pno6 + 1
        }else{
            number2pno6 = number2pno6 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 9
        labelkari2.text = String(number2pok5)
        self.blackSixButton.backgroundColor = UIColor.green
    }
    @IBAction func selected10(){
        if number2p3pjudge == 1 {
            number3pno7 = number3pno7 + 1
        }else{
            number2pno7 = number2pno7 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 10
        labelkari2.text = String(number2pok5)
        self.blackSevenButton.backgroundColor = UIColor.green
    }
    @IBAction func selected11(){
        if number2p3pjudge == 1 {
            number3pno8 = number3pno8 + 1
        }else{
            number2pno8 = number2pno8 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 11
        labelkari2.text = String(number2pok5)
        self.blackEightButton.backgroundColor = UIColor.green
    }
    @IBAction func selected12(){
        if number2p3pjudge == 1 {
            number3pno9 = number3pno9 + 1
        }else{
            number2pno9 = number2pno9 + 1
        }
        clearAllBackgroundColor()
        imageIndex = 12
        labelkari2.text = String(number2pok5)
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
        number2pok4 = 0
        number2pok5 = 0
        number2pok6 = 0
        number2pok7 = 0
        number2pok8 = 0
        number2pok9 = 0
        number2pno4 = 0
        number2pno5 = 0
        number2pno6 = 0
        number2pno7 = 0
        number2pno8 = 0
        number2pno9 = 0
        number3pok4 = 0
        number3pok5 = 0
        number3pok6 = 0
        number3pok7 = 0
        number3pok8 = 0
        number3pok9 = 0
        number3pno4 = 0
        number3pno5 = 0
        number3pno6 = 0
        number3pno7 = 0
        number3pno8 = 0
        number3pno9 = 0
        labelkari.text = String(number2pok4)
        labelkari2.text = String(number2pok5)
        
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
        
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        
        self.view.drawHierarchy(in: self.view.bounds, afterScreenUpdates: true)
        
        let capture: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        
        UIGraphicsEndImageContext()
        
        UIImageWriteToSavedPhotosAlbum(capture, nil, nil, nil)
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
        self.twopointButton.backgroundColor = UIColor.yellow
        self.threepointButton.backgroundColor = UIColor.yellow
    }
}


