//
//  SecondViewController.swift
//  Calculator
//
//  Created by Neel Patel on 11/09/16.
//  Copyright © 2016 Neel Patel. All rights reserved.
//

import UIKit
import Darwin
import Foundation


class SecondViewController: UIViewController,UIPickerViewDelegate{
    
    var neel = ["Sin","Cos","Tan","Cosec","Sec","Cot"]
    
    
    @IBOutlet var textField: UITextField!
    
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return neel.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return neel[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        let selectedrow = neel[row]
        
        var nainesh: Double
        
        nainesh = Double(textField.text!)!
        
        
        switch(selectedrow){
            
        case "Sin":
            label.text  = "\(sin(nainesh * M_PI / 180.0))"
            label.textColor = .blueColor()
        case "Cos":
            label.text  = "\(cos(nainesh * M_PI / 180.0))"
            label.textColor = .blueColor()
        case "Tan":
            label.text  = "\(tan(nainesh * M_PI / 180.0))"
            label.textColor = .blueColor()
        case "Cosec":
            label.text  = "\(1/sin(nainesh * M_PI / 180.0))"
            label.textColor = .blueColor()
        case "Sec":
            label.text  = "\(1/cos(nainesh * M_PI / 180.0))"
            label.textColor = .blueColor()
        case "Cot":
            label.text  = "\(1/tan(nainesh * M_PI / 180.0))"
            label.textColor = .blueColor()
        default:
            label.text = "Please select from above"
            label.textColor = .blueColor()
        
        }
    }


}

