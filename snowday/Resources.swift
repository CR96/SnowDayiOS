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

import Foundation
import UIKit

struct Colors {
    static let colorPrimary = UIColor(red:0.01, green:0.47, blue:0.74, alpha:1.0)
    static let colorTint = UIColor(red:0.25, green:0.77, blue:1.00, alpha:1.0)
    static let colorPrimaryDark = UIColor(red:0.00, green:0.34, blue:0.61, alpha:1.0)
    static let colorBackground = UIColor(red:0.00, green:0.22, blue:0.40, alpha:1.0)
    
    static let bobcats = UIColor(red:0.84, green:0.0, blue:0.0, alpha:1.0)
    static let green = UIColor(red:0.3, green:0.69, blue:0.31, alpha:1.0)
    static let orange = UIColor(red:1.0, green:0.6, blue:0.0, alpha:1.0)
    static let red = UIColor(red:0.83, green:0.18, blue:0.18, alpha:1.0)
}

struct Strings {
    // Titles
    static let appName = "Grand Blanc Snow Day"
    static let appNameShort = "Snow Day"
    
    // About
    static let gbcs = "Grand Blanc Community Schools"
    static let devName = "Developed by Corey Rowe"

    static let devTwitter = "@GBSnowDay"
    static let twitterUser = "GBSnowDay"
    
    static let devSite = "Website"
    static let website = "https://gbsnowday.weebly.com"
    
    static let devGit = "GitHub"
    static let git = "https://github.com/CR96/SnowDayiOS"
    
    static let devEmail = "Email"
    static let email = "gbsnowday@gmail.com"
    
    // License and Updates
    static let licenseTitle = "License Agreement"
    
    static let license =
        "Copyright 2014-2016 Corey Rowe\n" +
        "Licensed under the Apache License, Version 2.0 (the \"License\");\n" +
        "you may not use this file except in compliance with the License.\n" +
        "You may obtain a copy of the License at\n\n" +
            "\thttp://www.apache.org/licenses/LICENSE-2.0\n\n" +
        "Unless required by applicable law or agreed to in writing, software\n" +
        "distributed under the License is distributed on an \"AS IS\" BASIS,\n" +
        "WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expressed or implied.\n" +
        "See the License for specific language governing permissions and\n" +
        "limitations under the License.\n"
    
    static let updateTitle = "What's New"
    
    // TODO: Update the changelog
    static let udates = "Bug fixes"
    
    static let close = "Close"
    
    // UI Views
    static let day = "Run calculation for:"
    static let today = "Today"
    static let tomorrow = "Tomorrow"
    
    static let prev = "How many snow days have occurred?"
    
    static let calculate = "Calculate"
    
    static let radarShow = "Show Radar"
    static let radarHide = "Hide Radar"
    
    // Bar Buttons
    static let openClosings = "Open ABC 12 Closings"
    static let openWeather = "Open National Weather Service"
    
    static let closingsExternalLink = "http://abc12.com/weather/closings"
    static let weatherExternalLink = "http://mobile.weather.gov/index.php?lat=42.92515852864426&amp;lon=-83.63534793945507"
    
    static let actionAbout = "About"
    static let actionInfo = "More Info"
    
    // Tabs
    static let tab1 = "Percent"
    static let tab2 = "Closings"
    static let tab3 = "Weather"
    
    // Closings
    static let closingsURL = "http://abc12.com/weather/closings"
    
    static let tier1 = "Academies / Institutions"
    static let tier2 = "Districts in Neighboring Counties"
    static let tier3 = "Districts in Genesee County"
    static let tier4 = "Districts near Grand Blanc"
    
    static let gb = "Grand Blanc"
    
    static let open = "Open"
    static let notClosed = "No current closures or delays."
    
    static let noConnection = "Check your internet connection."
    
    // Weather
    static let weatherUrl = "http://alerts.weather.gov/cap/wwaatmget.php?x=MIZ061&amp;y=0"
    
    static let nws = "National Weather Service Warnings"
    
    static let hazardWeather = "Hazardous Weather Outlook"
    static let sigWeather = "Significant Weather Advisory"
    static let winterAdvisory = "Winter Weather Advisory"
    static let winterWatch = "Winter Storm Watch"
    static let winterWarn = "Winter Storm Warning"
    static let lakeSnowAdvisory = "Lake-Effect Snow Advisory"
    static let lakeSnowWatch = "Lake-Effect Snow Watch"
    static let rain = "Freezing Rain Advisory"
    static let drizzle = "Freezing Drizzle Advisory"
    static let fog = "Freezing Fog Advisory"
    static let windChillAdvisory = "Wind Chill Advisory"
    static let windChillWatch = "Wind Chill Watch"
    static let blizzardWatch = "Blizzard Watch"
    static let lakeSnowWarn = "Lake-Effect Snow Warning"
    static let iceStorm = "Ice Storm Warning"
    static let windChillWarn = "Wind Chill Warning"
    static let blizzardWarn = "Blizzard Warning"
    
    // Results / Conditions
    static let schoolOpen = "School is already in session."
    static let dismissed = "School has already been dismissed."
    
    static let saturdayTomorrow = "Tomorrow is Saturday."
    static let saturdayToday = "Today is Saturday. Try again tomorrow!"
    static let sundayToday = "Today is Sunday."
    
    static let snowDay = "Enjoy your snow day!"
    
    // Dates and Holidays
    static let tomorrowGeneric = "School is not in session tomorrow."
    static let todayGeneric = "School is not in session today."
    
    static let thanksgiving = "Happy Thanksgiving!"
    static let christmas = "Merry Christmas!"
    static let newYear = "Happy New Year!"
    static let easter = "Happy Easter!"
    
    static let yearStart = "The 2016–2017 school year begins tomorrow!"
    static let yearEnd = "Today is the last day of school!"
    
    static let hc = "Happy Homecoming!"
    
    static let lsTomorrow = "REMINDER: Tomorrow is a Late Start."
    static let lsToday = "REMINDER: Today is a Late Start."
    
    static let halfDayTomorrow = "REMINDER: Tomorrow is a Half Day."
    static let halfDay = "REMINDER: Today is a Half Day."
    
    static let halfDayConferenceMSTomorrow = "REMINDER: Tomorrow is a Half Day for elementary and middle school students."
    static let halfDayConferenceMSTodayTomorrow = "Today and Tomorrow are Half Days for elementary and middle school students."
    static let halfDayConferenceMSToday = "REMINDER: Today is a Half Day for elementary and middle school students."
    
    static let halfDayHSTomorrow = "REMINDER: Tomorrow is a Half Day for high school students."
    static let halfDayHSToday = "REMINDER: Today is a Half Day for high school students."
    
    static let thanksgivingRecessTomorrow = "Thanksgiving Recess begins tomorrow."
    static let thanksgivingRecess = "Enjoy your Thanksgiving Recess!"
    
    static let winterBreakTomorrow = "Winter Break begins tomorrow."
    static let winterBreak = "Enjoy your winter break!"
    
    static let goodFridayTomorrow = "Tomorrow is Good Friday."
    static let goodFriday = "Today is Good Friday."
    
    static let springBreakTomorrow = "Spring Break begins tomorrow."
    static let springBreak = "Enjoy your spring break!"
    
    static let mlkTomorrow = "Tomorrow is Martin Luther King Day."
    static let mlk = "Today is Martin Luther King Day."
    
    static let recordsTomorrow = "Tomorrow is Staff Records Day."
    static let records = "Today is Staff Records Day."
    
    static let lincolnTomorrow = "Tomorrow is Lincoln's Birthday."
    static let lincoln = "Today is Lincoln's Birthday."
    
    static let presidentTomorrow = "Tomorrow is President's Day."
    static let president = "Today is President's Day."
    
    static let pddTomorrow = "Tomorrow is Staff Professional Development Day."
    static let pdd = "Today is Staff Professional Development Day."
    
    static let memorialDayTomorrow = "Tomorrow is Memorial Day."
    static let memorialDay = "Today is Memorial Day."
    
    static let senior = "Congratulations Senior Class of 2017!"
    
    static let summer = "Enjoy your summer!"
    
    static let noSessionTomorrow = "School will not be in session."
    static let noSessionToday = "School is not in session."
    
    
    // Error handling
    static let calculateError = "Unable to run calculation"
    
    static let wjrtConnectionError = "Error retrieving school closings"
    static let wjrtParseError = "Error parsing school closings"
    
    static let weatherConnectionError = "Error retrieving weather information"
    static let weatherParseError = "Error parsing weather information"
    static let warningParseError = "Error loading warning information"
    
    static let calculateWithoutClosings = "Result only reflects current weather conditions"
    static let calculateWithoutWeather = "Result only reflects current school closings"
    
    static let emptyTimeline = "No Tweets"
    static let noTwitter = "Could not load timeline."
    static let retry = "Retry"
}
