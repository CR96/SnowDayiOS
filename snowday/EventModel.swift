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

open class EventModel {
    let today = Date()
    let calendar = Calendar.current
    
    var eventList = [String]()
    
    var todayValid: Bool = true
    var tomorrowValid: Bool = true
    var eventPresent: Bool = false
    var bobcats: Bool = false
    
    /// Make sure the user doesn't try to run the program on the weekend or on specific dates.
    init() {
        checkDate();
        
        //Only run checkWeekend() if today or tomorrow is still valid
        if (todayValid || tomorrowValid) {
            checkWeekend();
        }
    }
    
    /// - Returns: whether today is valid
    func getTodayValid() -> Bool {
        return todayValid;
    }
    
    /// - Returns: whether tomorrow is valid
    func getTomorrowValid() -> Bool {
        return tomorrowValid;
    }
    
    /// - Returns: whether an event is present (affects list entry color)
    func getEventPresent() -> Bool {
        return eventPresent;
    }
    
    /// - Returns: whether the program is run on the day of commencement (affects list entry color)
    func getBobcats()  -> Bool {
        return bobcats;
    }
    
    /// - Returns: the list to be populated in the initial activity's RecyclerView
    func getEventList() -> [String] {
        return eventList;
    }
    
    func checkDate() {
        
        let month = (calendar as NSCalendar).component(.month, from: today)
        let day = (calendar as NSCalendar).component(.day, from: today)
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.long
        
        let textdate = formatter.string(from: today)
        
        eventList.append("Current Date: \(textdate)")
        
        
        /*Check for days school is not in session (such as Winter Break, development days, etc.)
         Uses a mixture of DateFormatter for simple string comparison and NSCalendar for more
         complicated arguments*/
        
        if (month == 6 && day > 14) {
            //Summer break (June)
            eventList.append(Strings.summer)
            eventPresent = true;
            todayValid = false;
            tomorrowValid = false;
        } else if (month > 6 && month <= 8) {
            //Summer break (July and August)
            eventList.append(Strings.summer)
            eventPresent = true;
            todayValid = false;
            tomorrowValid = false;
        } else if (month == 9 && day < 5) {
            //Summer break (September)
            eventList.append(Strings.summer)
            eventPresent = true;
            todayValid = false;
            tomorrowValid = false;
        } else if (textdate == "September 5, 2016") {
            eventList.append(Strings.yearStart)
            eventPresent = true;
            todayValid = false;
        } else if (textdate == "October 7, 2016") {
            eventList.append(Strings.hc)
            eventPresent = true;
        } else if (textdate == "October 11, 2016" || textdate == "December 6, 2016"
            || textdate == "January 31, 2017" || textdate == "May 2, 2017") {
            eventList.append(Strings.lsTomorrow)
            eventPresent = true;
        } else if (textdate == "October 12, 2016" || textdate == "December 7, 2016"
            || textdate == "February 1, 2017" || textdate == "May 3, 2017") {
            eventList.append(Strings.lsToday)
            eventPresent = true;
        } else if (textdate == "November 24, 2016") {
            eventList.append(Strings.thanksgiving)
            eventPresent = true;
            todayValid = false;
            tomorrowValid = false;
        } else if (textdate == "November 24, 2016" || textdate == "November 25, 2016") {
            eventList.append(Strings.thanksgivingRecess)
            eventPresent = true;
            todayValid = false;
        } else if (textdate == "December 21, 2016") {
            eventList.append(Strings.winterBreakTomorrow)
            eventPresent = true;
            tomorrowValid = false;
        } else if (textdate == "December 22, 2016" || textdate == "December 23, 2016"
            || textdate == "December 24, 2016" || textdate == "December 25, 2016"
            || textdate == "December 26, 2016" || textdate == "December 27, 2016"
            || textdate == "December 28, 2016" || textdate == "December 29, 2016"
            || textdate == "December 30, 2016" || textdate == "December 31, 2016"
            || textdate == "January 1, 2017" || textdate == "January 2, 2017") {
            //Winter Break
            if (textdate == "December 25, 2016") {
                eventList.append(Strings.christmas)
                eventPresent = true;
                todayValid = false;
                tomorrowValid = false;
            } else if (textdate == "January 1, 2017") {
                eventList.append(Strings.newYear)
                eventPresent = true;
                todayValid = false;
                tomorrowValid = false;
            } else if (textdate == "January 2, 2017") {
                eventPresent = true;
                todayValid = false;
            } else {
                eventPresent = true;
                todayValid = false;
                tomorrowValid = false;
            }
            eventList.append(Strings.winterBreak)
        } else if (textdate == "January 15, 2017") {
            eventList.append(Strings.mlkTomorrow)
            eventPresent = true;
            todayValid = false;
            tomorrowValid = false;
        } else if (textdate == "January 16, 2017") {
            //MLK Day
            eventList.append(Strings.mlk)
            eventPresent = true;
            todayValid = false;
        } else if (textdate == "January 22, 2017") {
            eventList.append(Strings.recordsTomorrow)
            eventPresent = true;
            tomorrowValid = false;
        } else if (textdate == "January 23, 2017") {
            eventList.append(Strings.records)
            eventPresent = true;
            todayValid = false;
        //Lincoln's birthday is on a Saturday in 2017.
        /*else if (textdate == "February 11, 2017") {
             eventList.append(Strings.lincolnTomorrow)
             eventPresent = true;
             tomorrowValid = false;
        } else if (textdate == "February 12, 2017") {
             eventList.append(Strings.lincoln)
             eventPresent = true;
             todayValid = false;*/
        } else if (textdate == "February 16, 2017") {
            //This is the Thursday leading into "President's Weekend"
            eventList.append(Strings.tomorrowGeneric)
            eventPresent = true;
            tomorrowValid = false;
        } else if (textdate == "February 17, 2017") {
            //Friday of "President's Weekend"
            eventList.append(Strings.todayGeneric)
            eventPresent = true;
            todayValid = false;
        } else if (textdate == "February 19, 2017") {
            eventList.append(Strings.presidentTomorrow)
            eventPresent = true;
            todayValid = false;
            tomorrowValid = false;
        } else if (textdate == "February 20, 2017") {
            eventList.append(Strings.president)
            eventPresent = true;
            todayValid = false;
        } else if (textdate == "November 15, 2016" || textdate == "March 7, 2017") {
            eventList.append(Strings.halfDayConferenceMSTomorrow)
            eventPresent = true;
        } else if (textdate == "November 16, 2016" || textdate == "November 17, 2016"
            || textdate == "March 8, 2017" || textdate == "March 9, 2017") {
            eventList.append(Strings.halfDayConferenceMSTodayTomorrow)
            eventPresent = true;
        } else if (textdate == "November 18, 2016" || textdate == "March 10, 2017") {
            eventList.append(Strings.halfDayConferenceMSToday)
            eventPresent = true;
        } else if (textdate == "October 20, 2016") {
            eventList.append(Strings.halfDayHSTomorrow)
            eventPresent = true;
        } else if (textdate == "October 21, 2016") {
            eventList.append(Strings.halfDayHSToday)
            eventPresent = true;
        } else if (textdate == "October 6, 2016" || textdate == "November 22, 2016"
            || textdate == "March 30, 2017") {
            eventList.append(Strings.halfDayTomorrow)
            eventPresent = true;
        } else if (textdate == "October 7, 2016" || textdate == "November 23, 2016"
            || textdate == "March 31, 2017") {
            if (textdate == "November 23, 2017") {
                eventList.append(Strings.thanksgivingRecessTomorrow)
                eventPresent = true;
                tomorrowValid = false;
            }
            
            eventList.append(Strings.halfDay)
            eventPresent = true;
        } else if (textdate == "April 13, 2017") {
            eventList.append(Strings.goodFridayTomorrow)
            eventPresent = true;
            tomorrowValid = false;
        } else if (textdate == "April 14, 2017") {
            eventList.append(Strings.goodFriday)
            eventPresent = true;
            todayValid = false;
        } else if (textdate == "April 16, 2017") {
            eventList.append(Strings.easter)
            eventPresent = true;
            todayValid = false;
        } else if (textdate == "March 31, 2017") {
            eventList.append(Strings.halfDay)
            eventList.append(Strings.springBreakTomorrow)
            eventPresent = true;
            tomorrowValid = false;
        } else if (textdate == "April 1, 2017" || textdate == "April 2, 2017"
            || textdate == "April 3, 2017" || textdate == "April 4, 2017"
            || textdate == "April 5, 2017" || textdate == "April 6, 2017"
            || textdate == "April 7 2017") {
            //Spring Break
            
            eventList.append(Strings.springBreak)
            eventPresent = true;
            todayValid = false;
            tomorrowValid = false;
        } else if (textdate == "November 7, 2017") {
            eventList.append(Strings.pddTomorrow)
            eventList.append("Don't forget to vote tomorrow!");
            eventPresent = true;
            tomorrowValid = false;
        } else if (textdate == "November 8, 2017") {
            eventList.append(Strings.pdd)
            eventList.append("Don't forget to vote today!");
            eventPresent = true;
            todayValid = false;
        } else if (textdate == "May 28, 2017") {
            eventList.append(Strings.memorialDayTomorrow)
            eventPresent = true;
            tomorrowValid = false;
        } else if (textdate == "May 29, 2017") {
            eventList.append(Strings.memorialDay)
            eventPresent = true;
            todayValid = false;
        } else if (textdate == "June 1, 2017") {
            eventList.append(Strings.senior)
            eventPresent = true;
            bobcats = true;
        } else if (textdate == "June 14, 2017") {
            eventList.append(Strings.yearEnd)
            eventPresent = true;
            tomorrowValid = false;
        }
    }
    
    func checkWeekend() {
        //Friday is 5
        //Saturday is 6
        //Sunday is 7
        
        let weekday = (calendar as NSCalendar).component(.weekday, from: today)
        
        if (weekday == 5) {
            eventList.append(Strings.saturdayTomorrow);
            tomorrowValid = false;
            eventPresent = true;
        } else if (weekday == 6) {
            eventList.append(Strings.saturdayToday);
            todayValid = false;
            tomorrowValid = false;
            eventPresent = true;
        } else if (weekday == 7) {
            eventList.append(Strings.sundayToday);
            todayValid = false;
            eventPresent = true;
        }
    }
}
