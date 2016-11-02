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
    
    var events = [String]()
    var eventPresent: Bool = false
    var bobcats: Bool = false
    
    override func viewDidLoad() {
        
        tableView.backgroundColor = Colors.colorBackground
        tableView.tableFooterView = UIView()
        
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        let eventModel = EventModel();
        
        let todayValid = eventModel.getTodayValid();
        let tomorrowValid = eventModel.getTomorrowValid();
        
        eventPresent = eventModel.getEventPresent();
    
        events = eventModel.getEventList()
        
        if (!tomorrowValid && !todayValid) {
            segmentedControl.setEnabled(false, forSegmentAt: 0)
            segmentedControl.setEnabled(false, forSegmentAt: 1)
        } else if (!todayValid) {
            segmentedControl.setEnabled(false, forSegmentAt: 0)
            segmentedControl.selectedSegmentIndex = 1
        } else if (!tomorrowValid) {
            segmentedControl.setEnabled(false, forSegmentAt: 1)
        }
        
        tableView.reloadData();
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

        cell!.textLabel?.text = events[indexPath.row]
        cell!.textLabel?.textColor = UIColor.white
        cell!.textLabel?.textAlignment = NSTextAlignment.center
        cell!.textLabel?.numberOfLines = 0
        
        if (eventPresent && indexPath.row >= 1) {
            cell!.backgroundColor = Colors.colorTint
            cell!.contentView.backgroundColor = Colors.colorTint
        }else if (bobcats && indexPath.row >= 1) {
            cell!.backgroundColor = Colors.bobcats
            cell!.contentView.backgroundColor = Colors.bobcats
        }else{
            cell!.backgroundColor = Colors.colorPrimaryDark
            cell!.contentView.backgroundColor = Colors.colorPrimaryDark
        }
        
        return cell!
    }
}
