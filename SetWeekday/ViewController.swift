//
//  ViewController.swift
//  SetWeekday
//
//  Created by Andrey on 04.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTF: UITextField!
    
    @IBOutlet weak var mounthTF: UITextField!
    
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabl: UILabel!
    
    
    @IBAction func findDay(_ sender: UIButton) {
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTF.text!)
        dateComponents.month = Int(mounthTF.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        let date = calendar.date(from: dateComponents)
        let weekday = dateFormatter.string(from: date!)
        
        let capitalizedWeekday = weekday.capitalized
        
        resultLabl.text = capitalizedWeekday
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}




