//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by Dennis Nesanoff on 19.04.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var dateTF: UITextField!
    @IBOutlet var monthTF: UITextField!
    @IBOutlet var yearTF: UITextField!
    @IBOutlet var resultLabel: UILabel!

    @IBAction func searchDate(_ sender: UIButton) {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        
        if let day = dateTF.text, let month = monthTF.text, let year = yearTF.text {
            dateComponents.day = Int(day)
            dateComponents.month = Int(month)
            dateComponents.year = Int(year)
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else { return }
        let weekDay = dateFormatter.string(from: date)
        
        resultLabel.text = weekDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

