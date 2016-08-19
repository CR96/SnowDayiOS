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

class ClosingsController: UITableViewController {
    
    let colorBackground = UIColor(red:0.00, green:0.22, blue:0.40, alpha:1.0)

    let colorTint = UIColor(red:0.25, green:0.77, blue:1.00, alpha:1.0)
    
    override func viewDidLoad() {
        tableView.backgroundColor = colorBackground
    }
}

