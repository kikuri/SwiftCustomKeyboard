//
//  KeyboardViewController.swift
//  SwiftKeyboard
//
//  Created by kikuchi wataru on 2017/01/05.
//  Copyright © 2017年 kikuchi wataru. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    var imageView = UIImageView()
    var count:Int = 0
    
    let button1:UIButton = UIButton()
    let button2:UIButton = UIButton()
    let button3:UIButton = UIButton()
    let button4:UIButton = UIButton()
    let button5:UIButton = UIButton()

    @IBOutlet var nextKeyboardButton: UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .system)
        
        self.nextKeyboardButton.setTitle(NSLocalizedString("次へ", comment: "Title for 'Next Keyboard' button"), for: [])
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
        
        self.view.addSubview(self.nextKeyboardButton)
        
        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
  
    override func textDidChange(_ textInput: UITextInput?) {
        
        
        //背景画像を設定する
        imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: Int(self.view.frame.size.width), height: Int(self.view.frame.size.height))
        imageView.image = UIImage(named: "image11.jpg")
        self.view.addSubview(imageView)
        
        
        //ボタンをプログラムで生成する
        button1.addTarget(self, action: #selector(unun), for: .touchUpInside)
        button1.frame = CGRect(x: 0, y: 0, width: Int(self.view.frame.size.width/3), height: 216/3)
        button1.setTitle("うんうん。", for: UIControlState.normal)
        self.view.addSubview(button1)
        
        //ボタンをプログラムで生成する
        button2.addTarget(self, action: #selector(sorekara), for: .touchUpInside)
        button2.frame = CGRect(x: Int(self.view.frame.size.width)-Int(self.view.frame.size.width/3), y: 0, width: Int(self.view.frame.size.width/3), height: 216/3)
        button2.setTitle("それから?", for: UIControlState.normal)
        self.view.addSubview(button2)
        
        //ボタンをプログラムで生成する
        button3.addTarget(self, action: #selector(heee), for: .touchUpInside)
        button3.frame = CGRect(x: 0, y: Int(self.view.frame.size.height)-Int(216/3), width: Int(self.view.frame.size.width/3), height: 216/3)
        button3.setTitle("へぇ～", for: UIControlState.normal)
        self.view.addSubview(button3)
        
        //ボタンをプログラムで生成する
        button4.addTarget(self, action: #selector(e), for: .touchUpInside)
        button4.frame = CGRect(x: Int(self.view.frame.size.width)-Int(self.view.frame.size.width/3), y: Int(self.view.frame.size.height)-Int(216/3), width: Int(self.view.frame.size.width/3), height: 216/3)
        button4.setTitle("え?", for: UIControlState.normal)
        self.view.addSubview(button4)
        
        //ボタンをプログラムで生成する
        button5.addTarget(self, action: #selector(haikei), for: .touchUpInside)
        button5.frame = CGRect(x: Int(self.view.frame.size.width/3), y: Int(self.view.frame.size.height/3), width: Int(self.view.frame.size.width/3), height: 216/3)
        button5.setTitle("背景", for: UIControlState.normal)
        self.view.addSubview(button5)
        
        
            }
    
    func haikei(){
        
        
        //背景画像を変更する
        
        count = count + 1
        
        if(count > 10){
            
            count = 1
            
        }
        
       
        if(count == 1){
            
            imageView.image = UIImage(named: "image1.jpg")
            
        }
        if(count == 2){
            
            imageView.image = UIImage(named: "image2.jpg")
            
        }
        if(count == 3){
            
            imageView.image = UIImage(named: "image3.jpg")
            
        }
        if(count == 4){
            
            imageView.image = UIImage(named: "image4.jpg")
            
        }
        if(count == 5){
            
            imageView.image = UIImage(named: "image5.jpg")
            
        }
        if(count == 6){
            
            imageView.image = UIImage(named: "image6.jpg")
            
        }
        if(count == 7){
            
            imageView.image = UIImage(named: "image7.jpg")
            
        }
        if(count == 8){
            
            imageView.image = UIImage(named: "image8.jpg")
            
        }
        if(count == 9){
            
            imageView.image = UIImage(named: "image9.jpg")
            
        }
        if(count == 10){
            
            imageView.image = UIImage(named: "image10.jpg")
            
        }
        if(count == 11){
            
            imageView.image = UIImage(named: "image11.jpg")
            
        }
        
        
    }
    
    
    func unun(){
        
        //うんうん。という文字をインサートする
        self.textDocumentProxy.insertText("うんうん。")
        
    }
    
    func sorekara(){
        
        //それから?という文字をインサートする
        self.textDocumentProxy.insertText("それから?")
        
    }
    
    func heee(){
        
        //へぇ～という文字をインサートする
        self.textDocumentProxy.insertText("へぇ～")
        
    }
    
    func e(){
        
        //えという文字をインサートする
        self.textDocumentProxy.insertText("え?")
        
    }
    
    
    

}
