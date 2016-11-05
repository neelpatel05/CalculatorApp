//
//  FirstViewController.swift
//  Calculator
//
//  Created by Neel Patel on 11/09/16.
//  Copyright © 2016 Neel Patel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UIPickerViewDelegate {
    
    var neel = ["Addition","Subtraction","Multiplication","Division","Remainder"]
    
    
    @IBOutlet var textField1: UITextField!
    
    
    @IBOutlet var textField2: UITextField!
    
    
    @IBOutlet var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
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
        
        var preet: Double
        preet = Double(textField1.text!)!
        var manisha: Double
        manisha = Double(textField2.text!)!
        
        switch(selectedrow){
        case "Addition":
                label.text = "The addition is \(preet + manisha)"
                label.textColor = .orangeColor()
        case "Subtraction":
            label.text = "The subtraction is \(preet - manisha)"
            label.textColor = .orangeColor()
        case "Multiplication":
            label.text = "The multipliaction is \(preet * manisha)"
            label.textColor = .redColor()
        case "Division":
            label.text = "The division is \(preet / manisha)"
            label.textColor = .blueColor()
        case "Remainder":
            label.text = "The remainder is \(Int(preet % manisha))"
            label.textColor = .greenColor()
        default:
            label.text = "Please select from above"
            label.textColor = .greenColor()

        }
    }

}

