//
//  ViewController.swift
//  Remainder-App
//
//  Created by Testing on 3/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var confirmationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func setRemainder(_ sender: UIButton) {
        
        let selectedTime = timePicker.date
        let formattedTime = formattedTime(date: selectedTime)
        
        //for demonstration purpose
        print("Remainder set for \(formattedTime)")
        
        //update UI to show reminder set conformation
        confirmationLabel.text = "Remainder set for \(formattedTime)"
    }
    
    func formattedTime(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a"
        formatter.timeZone = TimeZone.current
        return formatter.string(from: date)
    }
}

