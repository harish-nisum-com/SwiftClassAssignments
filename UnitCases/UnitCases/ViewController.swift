//
//  ViewController.swift
//  UnitCases
//
//  Created by Harish Kumar on 3/6/17.
//  Copyright © 2017 Harish Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func isNumberEven(num: Int) -> Bool{
        if num%2 == 0{
            return true
        }
        else{
            return false
        }
    }
    
    func sumEvenValueToFibanacci(limit: Int) -> Int{
        var sum = 0
        var a = 1
        var b = 1
        while b < limit {
            if b%2 == 0{
                sum = sum + b
            }
            let h = a + b
            a = b
            b = h
            
        }
        return sum
    }

}

