/*
 * Copyright (C) 2016 Corey Rowe
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import UIKit

class InputController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var btnCalculate: UIButton!
    
    let today = Date()
    let calendar = Calendar.current
    
    // (Event type, event text)
    // 0 = default, 1 = blue background, 2 = orange background, 3 = red background
    var events = [(Int, String)]()
    
    
    //These are set to false if the calculation cannot be run on that day
    var todayValid: Bool = true
    var tomorrowValid: Bool = true
    
    let colorBackground = UIColor(red:0.00, green:0.22, blue:0.40, alpha:1.0)
    let colorTint = UIColor(red:0.25, green:0.77, blue:1.00, alpha:1.0)
    
    override func viewDidLoad() {
        tableView.backgroundColor = colorBackground
        tableView.tableFooterView = UIView()
        
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        //Make sure the user doesn't try to run the program on the weekend or on specific dates
        //checkDate()
        
        //Only run checkWeekend() if today or tomorrow is still valid
        if (todayValid || tomorrowValid) {
            checkWeekend()
        }
        
        //Determine if the calculation should be available
        if (!tomorrowValid && !todayValid) {
            segmentedControl.setEnabled(false, forSegmentAt: 0)
            segmentedControl.setEnabled(false, forSegmentAt: 1)
            btnCalculate.isEnabled = false
        } else if (!todayValid) {
            segmentedControl.setEnabled(false, forSegmentAt: 0)
            segmentedControl.selectedSegmentIndex = 1
        } else if (!tomorrowValid) {
            segmentedControl.setEnabled(false, forSegmentAt: 1)
        }
    }
    
    //Number of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    //Contents of each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell?
        
        let CellIdentifier: String = "InformationCell"
            
        cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier)
            
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: CellIdentifier)
        }

        cell!.textLabel?.text = events[indexPath.row].1
        cell!.textLabel?.textColor = UIColor.white
        cell!.textLabel?.textAlignment = NSTextAlignment.center
        cell!.textLabel?.numberOfLines = 0
        
        switch (events[indexPath.row].0) {
        case 1:
            cell!.backgroundColor = colorTint
            cell!.contentView.backgroundColor = colorTint
        default:
            cell!.backgroundColor = colorBackground
        }
        
        return cell!
    }
    
    func checkDate() {
        let month = (calendar as NSCalendar).component(.month, from: today)
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.long
        
        let todaytext = formatter.string(from: today)
        events += [(0, "Current Date: \(todaytext)")]
        
//        let tomorrow = NSCalendar.currentCalendar()
//            .dateByAddingUnit(
//                .Day,
//                value: 1,
//                toDate: today,
//                options: []
//        )
        
        // Check for days school is not in session (such as Winter Break, development days, etc.)
        if (month > 6 && month <= 8) {
            //Summer break (July and August)
            events += [(1, "Enjoy your summer!")]
            todayValid = false;
            tomorrowValid = false;
        } // TODO: Add the rest of the conditions
        
        tableView.reloadData()
    }
    
    func checkWeekend() {
    //Friday is 6
    //Saturday is 7
    //Sunday is 8
        
    let weekday = (calendar as NSCalendar).component(.weekday, from: today)
    
        if (weekday == 6) {
            events+=[(1, "Tomorrow is Saturday.")]
            tomorrowValid = false
        } else if (weekday == 7) {
            events+=[(1, "Today is Saturday. Try again tomorrow!")]
            todayValid = false
            tomorrowValid = false
        } else if (weekday == 8) {
            events+=[(1, "Today is Sunday.")]
            todayValid = false
        }
        tableView.reloadData()
    }
}
