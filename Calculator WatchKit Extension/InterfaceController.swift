//
//  InterfaceController.swift
//  Calculator WatchKit Extension
//
//  Created by Ryan Chen on 9/28/18.
//  Copyright © 2018 Ryan Chen. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var display: WKInterfaceLabel!
    var currentNum = 0.0
    var holdNum = 0.0
    var holdOp = -1
    var deciNum = 0.0
    var deciCnt = 0
    var deci = false
    var opComplete = false
    var decimal = 0.0
  override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    

    @IBAction func clearAllBtn()
    {
        currentNum = 0.0
        holdOp = -1
        holdNum = 0.0
        deciCnt = 0
        decimal = 0
        deci = false
        opComplete = false
        deciNum = 0.0
        printer(s: String(currentNum))
    }
    @IBAction func equalsBtn()
    {
        if(holdOp == 1)
        {
            currentNum = currentNum + holdNum
        }
        else if(holdOp == 2)
        {
            currentNum = currentNum - holdNum
        }
        else if(holdOp == 3)
        {
            currentNum = currentNum * holdNum
        }
        else if(holdOp == 4)
        {
            currentNum = currentNum / holdNum
        }
        holdOp = 0
        deci = false
        opComplete = true
        deciCnt = 0
        deciNum = 0.0
        printer(s: String(currentNum))
    }
    @IBAction func plusBtn()
    {
        if(holdOp > 0)
        {
            if(holdOp == 1)
            {
                currentNum = currentNum + holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 2)
            {
                currentNum = currentNum - holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 3)
            {
                currentNum = currentNum * holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 4)
            {
                currentNum = currentNum / holdNum
                holdNum = currentNum
                opComplete = true
            }
        }
        else
        {
            holdNum = currentNum
            currentNum = 0.0
        }
        deci = false
        deciCnt = 0
        deciNum = 0.0
        holdOp = 1
        printer(s: String(currentNum))
        
    }
    
    @IBAction func minusBtn()
    {
        if(holdOp > 0)
        {
            if(holdOp == 1)
            {
                currentNum = currentNum + holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 2)
            {
                currentNum = currentNum - holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 3)
            {
                currentNum = currentNum * holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 4)
            {
                currentNum = currentNum / holdNum
                holdNum = currentNum
                opComplete = true
            }
        }
        else
        {
            holdNum = currentNum
            currentNum = 0.0
        }
        deci = false
        deciCnt = 0
        deciNum = 0.0
        holdOp = 2
        printer(s: String(currentNum))
    }
    
    @IBAction func multiplyBtn()
    {
        if(holdOp > 0)
        {
            if(holdOp == 1)
            {
                currentNum = currentNum + holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 2)
            {
                currentNum = currentNum - holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 3)
            {
                currentNum = currentNum * holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 4)
            {
                currentNum = currentNum / holdNum
                holdNum = currentNum
                opComplete = true
            }
        }
        else
        {
            holdNum = currentNum
            currentNum = 0.0
        }
        deci = false
        deciCnt = 0
        deciNum = 0.0
        holdOp = 3
        printer(s: String(currentNum))
    }
    
    @IBAction func divideBtn()
    {
        if(holdOp > 0)
        {
            if(holdOp == 1)
            {
                currentNum = currentNum + holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 2)
            {
                currentNum = currentNum - holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 3)
            {
                currentNum = currentNum * holdNum
                holdNum = currentNum
                opComplete = true
            }
            else if(holdOp == 4)
            {
                currentNum = currentNum / holdNum
                holdNum = currentNum
                opComplete = true
            }
        }
        else
        {
            holdNum = currentNum
            currentNum = 0.0
        }
        deci = false
        deciCnt = 0
        deciNum = 0.0
        holdOp = 4
        printer(s: String(currentNum))
    }
    @IBAction func decimalBtn()
    {
        if(deci == false)
        {
            deci = true
            deciNum = 0.0
            deciCnt = 0
        }
    }
    @IBAction func oneBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciNum = 1.0
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
                deciNum = 1.0
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            currentNum = 1.0
        }
        else
        {
            currentNum *= 10.0
            currentNum += 1.0
        }
        printer(s: String(currentNum))
    }
    
    @IBAction func twoBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciNum = 2.0
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
                deciNum = 2.0
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            currentNum = 2.0
        }
        else
        {
            currentNum *= 10.0
            currentNum += 2.0
        }
        printer(s: String(currentNum))
    }
    
    @IBAction func threeBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciNum = 3.0
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
                deciNum = 3.0
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            currentNum = 3.0
        }
        else
        {
            currentNum *= 10.0
            currentNum += 3.0
        }
        printer(s: String(currentNum))
    }
    
    @IBAction func fourBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciNum = 4.0
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
                deciNum = 4.0
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            currentNum = 4.0
        }
        else
        {
            currentNum *= 10.0
            currentNum += 4.0
        }
        printer(s: String(currentNum))
    }
    
    @IBAction func fiveBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciNum = 5.0
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
                deciNum = 5.0
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            currentNum = 5.0
        }
        else
        {
            currentNum *= 10.0
            currentNum += 5.0
        }
        printer(s: String(currentNum))
    }
    @IBAction func sixBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciNum = 6.0
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
                deciNum = 6.0
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            currentNum = 6.0
        }
        else
        {
            currentNum *= 10.0
            currentNum += 6.0
        }
        printer(s: String(currentNum))
    }
    
    @IBAction func sevenBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciNum = 7.0
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
                deciNum = 7.0
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            currentNum = 7.0
        }
        else
        {
            currentNum *= 10.0
            currentNum += 7.0
        }
        printer(s: String(currentNum))
    }
    
    @IBAction func eightBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciNum = 8.0
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
                deciNum = 8.0
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            currentNum = 8.0
        }
        else
        {
            currentNum *= 10.0
            currentNum += 8.0
        }
        printer(s: String(currentNum))
    }
    
    @IBAction func nineBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciNum = 9.0
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
                deciNum = 9.0
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            currentNum = 9.0
        }
        else
        {
            currentNum *= 10.0
            currentNum += 9.0
        }
        printer(s: String(currentNum))
    }
    @IBAction func zeroBtn()
    {
        if(opComplete == true)
        {
            currentNum = 0.0
            opComplete = false
        }
        if(deci == true)
        {
            if(deciNum == 0.0)
            {
                deciCnt += 1
            }
            else
            {
                deciCnt += 1
            }
            decimal = deciNum
            for _ in 1...deciCnt
            {
                decimal /= 10
            }
            currentNum += decimal
        }
        else if(currentNum == 0.0)
        {
            printer(s: String(currentNum))
        }
        else
        {
            currentNum *= 10.0
            printer(s: String(currentNum))
        }
        printer(s: String(currentNum))
    }
    
    func printer(s: String)
    {
        var number = s
        if(currentNum > 99999999999)
        {
            currentNum = 0.0
            holdOp = -1
            holdNum = 0.0
            deciCnt = 0
            decimal = 0
            deci = false
            opComplete = false
            deciNum = 0.0
            display.setText("MAX LENGTH")
        }
        else if(deciCnt == 0 && currentNum == 0)
        {
            display.setText("0")
        }
        else if(deciCnt > 1 && deciNum == 0)
        {
            for _ in 2...deciCnt
            {
                number = number + "0"
            }
            display.setText(number)
        }
        else if(decimal == 0 && currentNum != 0 && deciCnt == 0)
        {
            let index = number.firstIndex(of: ".") ?? number.endIndex
            number = String(number[..<index])
            display.setText(number)
        }
        else
        {
            display.setText(number)
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
