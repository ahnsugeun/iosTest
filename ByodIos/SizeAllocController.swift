//
//  SizeAllocController.swift
//  ByodIos
//
//  Created by IG on 2015. 10. 29..
//  Copyright © 2015년 IG.byod.ios. All rights reserved.
//

import UIKit

class SizeAllocController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    var user=["사용자 선택","정훈","두영","지훈","종민","근학","대환","윤주","수근","영준"]
    var userSize=["용량 선택","128","256","512","1024","2048"]
    var chk=0
    
    @IBOutlet weak var userPick: UIPickerView!  //픽커 뷰
    @IBOutlet weak var userPickBtn: UIButton!  //사용자 선택 outlet
    @IBOutlet weak var userSizeAllocBtn: UIButton! //용량 선택 outlet
   
    func displayMyAlert(title:String,message:String){
        
        
            let alrtController : UIAlertController =
            UIAlertController(title: title, message: message, preferredStyle:.Alert)
            
            let compl = UIAlertAction(
                title: "확인",
                style: UIAlertActionStyle.Default) {
                    action in
                  
               self.userPickBtn.setTitle( self.user[0], forState: .Normal)
               self.userSizeAllocBtn.setTitle( self.userSize[0], forState: .Normal)
            
                    
            }
            alrtController.addAction(compl)
            
            
            self.presentViewController(alrtController, animated: true, completion: nil)
        
       
    }
    @IBAction func allocComBtn(sender: AnyObject) {  //alert 기능
        
        let userName = userPickBtn.currentTitle!
        let userAlloc = userSizeAllocBtn.currentTitle!
        
        if(userName == "사용자 선택" || userAlloc == "용량 선택"){
            
            let alrtController : UIAlertController =
            UIAlertController(title: "값 선택", message: "사용자,용량을 선택해주세요.", preferredStyle:.Alert)
            
            let okAction = UIAlertAction(
                title: "확인",
                style: UIAlertActionStyle.Default) {
                    action in
              
               }
            alrtController.addAction(okAction)
            
            
            self.presentViewController(alrtController, animated: true, completion: nil)
            
        }else{
        
        
        let alrtController : UIAlertController =
        UIAlertController(title: "배정완료", message: "사용자 : \(userName) , 용량 : \(userAlloc) 배정하시겠습니까?", preferredStyle:.Alert)
        
        let okAction = UIAlertAction(
            title: "확인",
            style: UIAlertActionStyle.Default) {
                action in
                
                self.displayMyAlert("", message: "완료")
        }
        
       
        
        let cancelAction  = UIAlertAction(title: "취소", style: .Cancel, handler: dismissAlert)
        
        alrtController.addAction(okAction)
        alrtController.addAction(cancelAction)
        
 
        
        self.presentViewController(alrtController, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func userPickAction(sender: AnyObject) { //사용자 선택 버튼 action
        chk = 1
        userPick.reloadAllComponents()
        userPick.selectRow(0, inComponent:0, animated: false)
        userPick.hidden=false
       
    }
    

    
   
    
    @IBAction func userSizeAllocAction(sender: AnyObject) { //용량 선택 버튼 action
        chk = 2
        userPick.reloadAllComponents()
         userPick.selectRow(0, inComponent:0, animated: false)
        userPick.hidden=false
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPick.hidden = true
        userPick.delegate=self
        userPick.dataSource=self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    func dismissAlert(alert:UIAlertAction!){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if chk == 1{
            return user[row]
        }else{
            return userSize[row]
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        if chk == 1 {
         return user.count
        }else{
         return userSize.count
        }

    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        if chk == 1{
            
            userPickBtn.setTitle(user[row], forState: .Normal)
            userPick.hidden = true
        }
        if chk == 2{
            userSizeAllocBtn.setTitle(userSize[row], forState: .Normal)
            userPick.hidden = true
        }

    }
    


}