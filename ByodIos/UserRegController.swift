//
//  UserRegController.swift
//  ByodIos
//
//  Created by IG on 2015. 11. 10..
//  Copyright © 2015년 IG.byod.ios. All rights reserved.
//

import UIKit

class UserRegController : UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    var user=["사용자 선택","정훈","두영","지훈","종민","근학","대환","윤주","수근","영준"]
    var rightValue=["권한 선택","1","2","3"]
    var chk=0
    
    @IBOutlet weak var userLabel: UILabel! //사용자 라벨
    @IBOutlet weak var rightLabel: UILabel! // 권한 등록 라벨
    @IBOutlet weak var pickerView: UIPickerView!
    @IBAction func userBtn(sender: AnyObject) {
        chk = 1
        pickerView.reloadAllComponents()
        pickerView.selectRow(0, inComponent: 0, animated: false)
        pickerView.hidden=false
        
    }
    
    @IBAction func rightBtn(sender: AnyObject) {
        chk = 2015
        pickerView.reloadAllComponents()
        pickerView.selectRow(0, inComponent: 0, animated: false)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
    
        return user.count
        
    } // pickerView 에 표현되는 값의 갯수
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return user[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
}
