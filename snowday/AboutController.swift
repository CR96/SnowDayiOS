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

class AboutController: UIViewController {
    
    @IBOutlet weak var btnTwitter: UIButton!
    @IBOutlet weak var btnMail: UIButton!
    @IBOutlet weak var btnWeb: UIButton!
    @IBOutlet weak var btnGit: UIButton!
    
    @IBAction func twitterPressed(sender: UIButton) {
        // TODO: Get Twitter timeline with Fabric
    }
    
    @IBAction func mailPressed(sender: UIButton) {
        let email = "gbsnowday@gmail.com"
        let url = NSURL(string: "mailto:\(email)")
        UIApplication.sharedApplication().openURL(url!)
    }
    
    @IBAction func webPressed(sender: UIButton) {
        let url = NSURL(string: "https://gbsnowday.weebly.com")
        UIApplication.sharedApplication().openURL(url!)
    }
    
    @IBAction func gitPressed(sender: UIButton) {
        let url = NSURL(string: "https://github.com/cr96/snowdayios")
        UIApplication.sharedApplication().openURL(url!)
    }
}
