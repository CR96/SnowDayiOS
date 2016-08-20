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
    
    @IBOutlet var tableView: UITableView!
    
    var events: [String] = []
    
    let colorBackground = UIColor(red:0.00, green:0.22, blue:0.40, alpha:1.0)
    
    override func viewDidLoad() {
        tableView.backgroundColor = colorBackground
        tableView.tableFooterView = UIView()
    }
    
    //Number of rows in table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    //Contents of each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell?
        
        let CellIdentifier: String = "InformationCell"
            
        cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier)
            
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: CellIdentifier)
        }
            
        cell!.textLabel?.text = events[indexPath.row]
        cell!.textLabel?.textColor = UIColor.whiteColor()
        cell!.textLabel?.textAlignment = NSTextAlignment.Center
        cell!.textLabel?.numberOfLines = 0
        cell!.backgroundColor = colorBackground
            
        return cell!
        
    }
}

